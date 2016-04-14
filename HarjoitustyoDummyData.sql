INSERT INTO PersonGroup (ID) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

INSERT INTO Company (ID,Name) VALUES
(2138491,'Rahti Oy'),
(1512424,'Pikakuljetus'),
(2424151,'Lähettipalvelu'),
(1245124,'A-kuljetus'),
(1242514,'Pakettipalvelu'),
(4215124,'Raskaskuljetus'),
(5112424,'Autokuljetus Oy'),
(1524241,'Rengasrahti Oy');

INSERT INTO Person (ID, GroupID, Name) VALUES
(1, 3, 'Make Makkonen'),
(2, 2, 'Nakke Nakuttaja'),
(3, 1, 'Seko Seppo'),
(4, 4, 'Martti Virtanen'),
(5, 1, 'Pertti Pekkanen'),
(6, 5, 'Antero Ahven'),
(7, 6, 'Teppo Terävä'),
(8, 6, 'Kalle Kakkonen'),
(9, 6, 'Ville Vallaton');

INSERT INTO Cargo (ID, CompanyID, CarrierID, Arrived, SignerID, Signed, Signature) VALUES 
(1, 2138491, 7, "2016-04-10 6:16:05", 1, "2016-04-10 6:35:05", NULL),
(2, 1512424, 8, "2016-04-10 6:30:05", 1, "2016-04-10 7:10:15", NULL),
(3, 2424151, 9, "2016-04-10 6:50:15", 1, "2016-04-10 7:30:25", NULL),
(4, 1245124, 7, "2016-04-10 8:30:25", 3, "2016-04-10 9:10:15", NULL),
(5, 1242514, 8, "2016-04-10 8:50:03", 1, "2016-04-10 10:10:15", NULL),
(6, 4215124, 9, "2016-04-10 10:30:14", 3, "2016-04-10 11:02:12", NULL),

(7, 1512424, 7, "2016-04-11 6:16:05", 1, "2016-04-11 6:56:05", NULL),
(8, 1512424, 7, "2016-04-11 6:30:05", 3, "2016-04-11 7:16:05", NULL),
(9, 1512424, 8, "2016-04-11 6:50:15", 1, "2016-04-11 7:56:10", NULL),
(10, 1512424, 9, "2016-04-11 8:30:25", 3, "2016-04-11 8:57:05", NULL),
(11, 1512424, 7, "2016-04-11 8:50:03", 1, "2016-04-11 9:26:13", NULL),
(12, 1512424, 8, "2016-04-11 10:30:14", 1, "2016-04-11 11:52:35", NULL),

(13, 1512424, 9, "2016-05-10 11:10:14", 3, "2016-05-10 11:42:12", NULL),
(14, 1512424, 8, "2016-05-10 11:30:04", 3, "2016-05-10 11:58:32", NULL),
(15, 1512424, 7, "2016-05-10 12:35:19", 3, "2016-05-10 13:12:09", NULL),
(16, 1512424, 9, "2016-05-10 13:20:34", 1, "2016-05-10 13:57:12", NULL),
(17, 1512424, 7, "2016-05-10 14:32:23", 3, "2016-05-10 15:46:14", NULL);

INSERT INTO SpecialCargo (CargoID) VALUES
(1);

INSERT INTO Reservation (ID, CargoID, Description) VALUES
(1, 3, '2 lavaa rikki'),
(2, 9, 'Kuorma kaatunut');

INSERT INTO CargoItem (ID, CargoID, Type, Content, Number) VALUES
(1, 1, 'EURO', 'Ydinjäte', 20),
(2, 2, 'CRT', 'Toimistotarvikkeet', 15),
(3, 3, 'BARREL', 'Öljyä', 20),
(4, 4, 'CLL', 'Autonosia', 20),
(5, 5, 'CLL', 'Metallikappaleita', 20),
(6, 6, 'PCS', 'Vanteita', 10),
(7, 7, 'EURO', 'Kopiopaperia', 2),
(8, 8, 'CLL', 'Muttereita', 20),
(9, 8, 'CLL', 'Metallikappaleita', 20),
(10, 8, 'EURO', 'Polttoainetankkeja', 10),
(11, 9, 'CRT', 'Toimistotarvikkeet', 10),
(12, 10, 'PCS', 'Autoja', 2),
(13, 11, 'CLL', 'Paperirullia', 5),
(14, 12, 'BARREL', 'Öljyä', 20),
(15, 13, 'CLL', 'Sisäkumeja', 20),
(16, 14, 'KG', 'Rehua', 20),
(17, 15, 'CLL', 'Huonekaluja', 25),
(18, 16, 'CLL', 'Metallikappaleita', 25),
(19, 17, 'CLL', 'Huonekaluja', 25);
