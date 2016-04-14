-- Hakee kaikki rahdit joita ei ole kuitattu 60 minuutin sisällä saapumisesta
SELECT *
FROM Cargo
WHERE Signed NOT BETWEEN Arrived AND Arrived + INTERVAL 60 MINUTE;

-- Hakee kaikki rahdinosat rahdista 10
SELECT *
FROM CargoItem
WHERE ID = 10;

-- Laskee päivittäin saapuneet rahdit
SELECT CAST(Arrived AS DATE) AS Date, COUNT(*) AS Arrivals
FROM Cargo
GROUP BY Date;

-- Laskee tunneittain saapuneet rahdit
SELECT CAST(Arrived AS DATE) AS Date, HOUR(Arrived) As Hour, COUNT(*) AS Arrivals
FROM Cargo
GROUP BY Date, Hour;

-- Asettaa pari muuttujaa
SET @StartTime = "2016-04-10 00:00:00";
SET @EndTime = "2016-05-11 23:59:59";

-- Laskee rahdit yhtiöittäin tietyltä aikaväliltä
SELECT Name, COUNT(*)
FROM Company
INNER JOIN Cargo
ON Company.ID = CompanyID
	AND Arrived BETWEEN @StartTime AND @EndTime
GROUP BY Company.ID;

-- Hakee kaikki saapuneet rahdinosat tietyltä aikaväliltä
SELECT Content, Number
FROM CargoItem
INNER JOIN Cargo
ON CargoID = Cargo.ID
	AND Arrived BETWEEN @StartTime AND @EndTime;
	
-- Hakee kaikki varaukset tietyltä aikaväliltä
SELECT Description
FROM Reservation
INNER JOIN Cargo
ON CargoID = Cargo.ID
	AND Arrived BETWEEN @StartTime AND @EndTime;
