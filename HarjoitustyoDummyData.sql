INSERT INTO PersonGroup (ID) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

INSERT INTO Person (ID, GroupID, Name) VALUES
(1, 3, 'Make Makkonen'),
(2, 2, 'Nakke Nakuttaja');

INSERT INTO Cargo (ID, CompanyID, CarrierID, Arrived, SignerID, Signed, Signature) VALUES 
(1, 2138491, 1423, NULL , 5315, 'Y', NULL),
(2, 1512424, 5215, NULL, 8542, 'Y', NULL),
(3, 6264262, 6548, NULL, 8786, 'Y', NULL);

INSERT INTO SpecialCargo (ID) VALUES
(1);

INSERT INTO Reservation (ID, CargoID, Description) VALUES
(1, 3, 'Särkyvää');

INSERT INTO CargoItem (ID, CargoID, Type, Content, Number) VALUES
(1, 1, 'EURO', 'Ydinjäte', 20),
(2, 2, 'EURO', 'Toimistotarvikkeet', 15),
(3, 3, 'BARREL', 'Öljyä', 20);
