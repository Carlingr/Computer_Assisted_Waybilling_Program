SELECT rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, towns.Color AS destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.Milepost
FROM (
    SELECT rawTbl.ID, rawTbl.Origin, towns.Color AS OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.MinQty, rawTbl.MaxQty, rawTbl.Milepost
    FROM(
        SELECT  rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, rawTbl.OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, districts.Color AS destinationDistrict, rawTbl.CarType, rawTbl.MinQty, rawTbl.MaxQty, rawTbl.Milepost
        FROM (
            SELECT rawTbl.ID, rawTbl.Origin, rawTbl.OriginTown, rawTbl.OriginColor, districts.Color AS OriginDistrict, rawTbl.destination, rawTbl.destinationTown, rawTbl.destinationColor, rawTbl.destinationDistrict, rawTbl.CarType, rawTbl.MinQty, rawTbl.MaxQty, rawTbl.Milepost
            FROM (
                SELECT carorders.ID, carorders.Origin, carorders.OriginTown, carorders.OriginColor, carorders.OriginDistrict, industries.Name AS destination, industries.Town AS destinationTown, industries.IndustryColor AS destinationColor, industries.District AS destinationDistrict, carorders.CarType, carorders.MinQty, carorders.MaxQty, industries.Milepost
                FROM (
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
ORDER BY Milepost;