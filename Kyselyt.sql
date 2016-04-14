
SELECT *
FROM Cargo
WHERE Signed NOT BETWEEN Arrived AND Arrived + INTERVAL 60 MINUTE;

SELECT *
FROM CargoItem
WHERE ID = 10;

SELECT CAST(Arrived AS DATE) AS Date, COUNT(*) AS Arrivals
FROM Cargo
GROUP BY Date;

SELECT CAST(Arrived AS DATE) AS Date, HOUR(Arrived) As Hour, COUNT(*) AS Arrivals
FROM Cargo
GROUP BY Date, Hour;

SET @StartTime = "2016-04-10 00:00:00";
SET @EndTime = "2016-05-11 23:59:59";

SELECT Name, COUNT(*)
FROM Company
INNER JOIN Cargo
ON Company.ID = CompanyID
	AND Arrived BETWEEN @StartTime AND @EndTime
GROUP BY Company.ID;

SELECT Content, Number
FROM CargoItem
INNER JOIN Cargo
ON CargoID = Cargo.ID
	AND Arrived BETWEEN @StartTime AND @EndTime;
	
SELECT Description
FROM Reservation
INNER JOIN Cargo
ON CargoID = Cargo.ID
	AND Arrived BETWEEN @StartTime AND @EndTime;