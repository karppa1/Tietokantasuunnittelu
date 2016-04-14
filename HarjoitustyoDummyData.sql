INSERT INTO PersonGroup (ID,Description) VALUES
(1,'Consignee'),
(2,'Unloader'),
(3,'Supervisor'),
(4,'Material Handler'),
(5,'Manager'),
(6,'Carrier');

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
(9, 6, 'Ville Vallaton'),
(10, 6, 'Ville Virtanen'),
(11, 6, 'Matti Mallikas'),
(12, 6, 'Veli Vallaton');

INSERT INTO Cargo (ID, CompanyID, CarrierID, Arrived, SignerID, Signed, Signature) VALUES 
(1, 2138491, 7, "2016-04-10 6:16:05", 5, "2016-04-10 6:35:05", NULL),
(2, 1512424, 8, "2016-04-10 6:30:05", 5, "2016-04-10 7:10:15", NULL),
(3, 2424151, 9, "2016-04-10 6:50:15", 5, "2016-04-10 7:30:25", NULL),
(4, 1245124, 10, "2016-04-10 8:30:25", 3, "2016-04-10 9:10:15", NULL),
(5, 1242514, 11, "2016-04-10 8:50:03", 5, "2016-04-10 10:10:15", NULL),
(6, 4215124, 12, "2016-04-10 10:30:14", 3, "2016-04-10 11:02:12", NULL),

(7, 2138491, 7, "2016-04-11 6:16:05", 5, "2016-04-11 6:56:05", NULL),
(8, 1512424, 8, "2016-04-11 6:30:05", 3, "2016-04-11 7:16:05", NULL),
(9, 2424151, 9, "2016-04-11 6:50:15", 5, "2016-04-11 7:56:10", NULL),
(10, 1242514, 12, "2016-04-11 8:30:25", 3, "2016-04-11 8:57:05", NULL),
(11, 5112424, 11, "2016-04-11 8:50:03", 5, "2016-04-11 9:26:13", NULL),
(12, 2138491, 7, "2016-04-11 10:30:14", 5, "2016-04-11 11:52:35", NULL),

(13, 1512424, 9, "2016-05-10 11:10:14", 3, "2016-05-10 11:42:12", NULL),
(14, 1245124, 8, "2016-05-10 11:30:04", 3, "2016-05-10 11:58:32", NULL),
(15, 5112424, 7, "2016-05-10 12:35:19", 3, "2016-05-10 13:12:09", NULL),
(16, 1242514, 11, "2016-05-10 13:20:34", 5, "2016-05-10 13:57:12", NULL),
(17, 1524241, 12, "2016-05-10 14:32:23", 3, "2016-05-10 15:46:14", NULL);

(18, 1512424, 9, "2016-05-14 11:10:14", 3, "2016-05-14 11:42:12", NULL),
(19, 1245124, 8, "2016-05-14 11:30:04", 3, "2016-05-14 11:58:32", NULL),
(20, 5112424, 7, "2016-05-14 12:35:19", 3, "2016-05-14 13:12:09", NULL),
(21, 1242514, 10, "2016-05-14 13:20:34", 5, "2016-05-14 13:57:12", NULL),
(22, 1524241, 12, "2016-05-14 14:32:23", 3, "2016-05-14 15:46:14", NULL);

(23, 1512424, 7, "2016-05-15 11:20:14", 3, "2016-05-15 11:52:12", NULL),
(24, 1245124, 8, "2016-05-15 11:40:04", 5, "2016-05-15 11:58:32", NULL),
(25, 5112424, 10, "2016-05-15 12:45:19", 3, "2016-05-15 13:22:09", NULL),
(26, 1242514, 9, "2016-05-15 13:30:34", 5, "2016-05-15 13:57:12", NULL),
(27, 1524241, 11, "2016-05-15 14:42:23", 3, "2016-05-15 15:56:14", NULL);

(28, 1512424, 9, "2016-06-10 11:10:14", 3, "2016-06-10 11:42:12", NULL),
(29, 1245124, 12, "2016-06-10 11:30:04", 3, "2016-06-10 11:58:32", NULL),
(30, 5112424, 7, "2016-06-10 12:35:19", 5, "2016-06-10 13:12:09", NULL),
(31, 1242514, 8, "2016-06-10 13:20:34", 5, "2016-06-10 13:57:12", NULL),
(32, 1524241, 10, "2016-06-10 14:32:23", 3, "2016-06-10 15:46:14", NULL);

(33, 1512424, 11, "2016-05-11 12:10:14", 5, "2016-05-11 12:42:12", NULL),
(34, 1245124, 8, "2016-05-11 12:30:04", 3, "2016-05-11 12:58:32", NULL),
(35, 5112424, 10, "2016-05-11 13:35:19", 3, "2016-05-11 14:12:09", NULL),
(36, 1242514, 9, "2016-05-11 14:20:34", 5, "2016-05-11 14:57:12", NULL),
(37, 1524241, 7, "2016-05-11 15:32:23", 3, "2016-05-11 16:46:14", NULL);

INSERT INTO SpecialCargo (CargoID) VALUES
(1),
(20);

INSERT INTO Reservation (ID, CargoID, Description) VALUES
(1, 3, '2 lavaa rikki')
(2, 5, 'Trukki epäkunnossa'),
(3, 9, 'Kuorma kaatunut'),
(4, 12, 'Kuorma kaatunut'),
(5, 17, 'Trukki epäkunnossa'),
(6, 32, 'Trukin piikit meni seinästä läpi');

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
(19, 17, 'CLL', 'Huonekaluja', 25),
(20, 20, 'EURO', 'Ydinjäte', 20),
(21, 21, 'CRT', 'Toimistotarvikkeet', 15),
(22, 22, 'BARREL', 'Öljyä', 20),
(23, 23, 'CLL', 'Autonosia', 20),
(24, 24, 'CLL', 'Metallikappaleita', 20),
(25, 25, 'PCS', 'Vanteita', 10),
(26, 26, 'EURO', 'Kopiopaperia', 2),
(27, 27, 'CLL', 'Muttereita', 20),
(28, 28, 'CLL', 'Metallikappaleita', 20),
(29, 29, 'EURO', 'Polttoainetankkeja', 10),
(30, 30, 'CRT', 'Toimistotarvikkeet', 10),
(31, 31, 'PCS', 'Autoja', 2),
(32, 32, 'CLL', 'Paperirullia', 5),
(33, 33, 'BARREL', 'Öljyä', 20),
(34, 34, 'CLL', 'Sisäkumeja', 20),
(35, 35, 'KG', 'Rehua', 20),
(36, 35, 'CLL', 'Huonekaluja', 25),
(37, 35, 'CLL', 'Metallikappaleita', 25),
(38, 36, 'CLL', 'Huonekaluja', 25),
(39, 37, 'CLL', 'Sisäkumeja', 20),
(40, 37, 'KG', 'Rehua', 20),
(41, 37, 'CLL', 'Huonekaluja', 25),
(42, 38, 'CLL', 'Metallikappaleita', 25),
(43, 38, 'CLL', 'Huonekaluja', 25);
