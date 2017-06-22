/*
This file generates the weekly waybill list
The comments are structured as follows:

SELECT stuff
FROM ( -- what is *SQL goes here* getting?
    *SQL goes here*
AS generatedtablename, otherTableToBeJoined
WHERE cellfromtableA=IDfromtableB)
*/
/*
This file generates the weekly waybill list
The comments are structured as follows:

SELECT stuff
FROM ( -- what is *SQL goes here* getting?
    *SQL goes here*
AS generatedtablename, otherTableToBeJoined
WHERE cellfromtableA=IDfromtableB)
*/


DROP TABLE IF EXISTS `currentcarorders`; -- delete all the data from last time.

CREATE TABLE `currentcarorders` ( -- create the table to store the data if it does not exist
   `ID` int(4) DEFAULT NULL,
   `Origin` varchar(50) DEFAULT NULL,
   `OriginTown` varchar(2) DEFAULT NULL,
   `OriginColor` varchar(2) DEFAULT NULL,
   `OriginDistrict` varchar(2) DEFAULT NULL,
   `destination` varchar(50) DEFAULT NULL,
   `destinationTown` varchar(2) DEFAULT NULL,
   `destinationColor` varchar(2) DEFAULT NULL,
   `destinationDistrict` varchar(2) DEFAULT NULL,
   `CarType` varchar(2) DEFAULT NULL,
   `Qty` int(2) DEFAULT NULL,
   `Milepost` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO currentcarorders -- add destination town color
     SELECT rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict,  CONCAT(towns.Name, ", ", rawTbl.destination) AS destination, towns.Color AS destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.Qty, rawTbl.Milepost
     FROM ( -- add origin town colour
         SELECT rawTbl.ID, CONCAT(towns.Name, ", ", rawTbl.Origin) AS Origin, towns.Color AS OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.Qty, rawTbl.Milepost
         FROM( -- add destination district color
             SELECT  rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, districts.Color AS destinationDistrict, rawTbl.CarType, rawTbl.Qty, rawTbl.Milepost
             FROM ( -- add origin district color
                 SELECT rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, districts.Color AS OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.Qty, rawTbl.Milepost
                 FROM ( -- add destination industries
                     SELECT carorders.ID, carorders.Origin, carorders.OriginTown, carorders.OriginColor, carorders.OriginDistrict, industries.Name AS destination, industries.Town AS destinationTown, industries.IndustryColor AS destinationColor, industries.District AS destinationDistrict, carorders.CarType, carorders.Qty, industries.Milepost
                     FROM ( -- gen table with origin industries filled in
                        SELECT carordersrandom.ID, industries.Name AS Origin, industries.Town AS OriginTown, industries.IndustryColor AS OriginColor, industries.District AS OriginDistrict, carordersrandom.Destination, carordersrandom.CarType, FLOOR(RAND()*(carordersrandom.MaxQty-carordersrandom.MinQty)+carordersrandom.MinQty) AS Qty
                        FROM carordersrandom, industries
                        WHERE industries.ID=carordersrandom.Origin)
                     AS carorders, industries
                     WHERE carorders.destination=industries.ID)
                 AS rawTbl, districts
                 WHERE districts.ID=rawTbl.originDistrict)
             AS rawTbl, districts
             WHERE districts.ID=rawTbl.destinationDistrict)
         AS rawTbl, towns
         WHERE towns.ID=rawTbl.originTown)
     AS rawTbl, towns
     WHERE towns.ID=rawTbl.destinationTown;

DELETE FROM currentcarorders WHERE Qty=0; -- get rid of the empty rows

SELECT * FROM currentcarorders ORDER BY Milepost; -- return the result sorted by the box the destanation waybill is in
