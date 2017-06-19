/*
This file generates the weekly waybill list
The comments are structured as follows:

SELECT stuff
FROM (-- what is *SQL goes here* getting?
    *SQL goes here*
AS generatedtablename, otherTableToBeJoined
WHERE cellfromtableA=IDfromtableB)

*/

-- add destination district color
SELECT rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, towns.Color AS destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.Milepost
FROM (-- add origin town colour
    SELECT rawTbl.ID, rawTbl.Origin, towns.Color AS OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.MinQty, rawTbl.MaxQty, rawTbl.Milepost
    FROM(-- add destination district color
        SELECT  rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, districts.Color AS destinationDistrict, rawTbl.CarType, rawTbl.MinQty, rawTbl.MaxQty, rawTbl.Milepost
        FROM (-- add origin district color
            SELECT rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, districts.Color AS OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.MinQty, rawTbl.MaxQty, rawTbl.Milepost
            FROM (-- add destination industries
                SELECT carorders.ID, carorders.Origin, carorders.OriginTown, carorders.OriginColor, carorders.OriginDistrict, industries.Name AS destination, industries.Town AS destinationTown, industries.IndustryColor AS destinationColor, industries.District AS destinationDistrict, carorders.CarType, carorders.MinQty, carorders.MaxQty, industries.Milepost
                FROM (-- gen table with origin industries filled in
                    SELECT carordersrandom.ID, industries.Name AS Origin, industries.Town AS OriginTown, industries.IndustryColor AS OriginColor, industries.District AS OriginDistrict, carordersrandom.Destination, carordersrandom.CarType, carordersrandom.MinQty, carordersrandom.MaxQty
                    FROM industries, carordersrandom
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
WHERE towns.ID=rawTbl.destinationTown
ORDER BY Milepost; -- List by the box that the origen waybill is in. Why we called this field milepost is beyond me.
