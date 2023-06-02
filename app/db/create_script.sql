
DROP DATABASE IF EXISTS `be-p4-toets-336472`;


CREATE DATABASE IF NOT EXISTS `be-p4-toets-336472`;

Use `be-p4-toets-336472`;

CREATE TABLE Examen (
    Id                  INT             PRIMARY KEY,
    StudentId           INT,
    Rijschool           VARCHAR(40),
    Stad                VARCHAR(30),
    Rijbewijscategorie  VARCHAR(4),
    Datum               DATE,
    Uitslag             VARCHAR(20)
);


INSERT INTO Examen (Id, StudentId, Rijschool, Stad, Rijbewijscategorie, Datum, Uitslag)
VALUES 
                    (1, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd'),
                    (2, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd'),
                    (3, 103234, 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd'),
                    (4, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt'),
                    (5, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-05-17', 'Gezakt'),
                    (6, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd'),
                    (7, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd');


CREATE TABLE ExamenPerExaminator (
    Id              INT             PRIMARY KEY,
    ExamenId        INT,
    ExaminatorId    INT,
    FOREIGN KEY (ExamenId) REFERENCES Examen(Id),
    FOREIGN KEY (ExaminatorId) REFERENCES Examinator(Id)
);


INSERT INTO ExamenPerExaminator (Id, ExamenId, ExaminatorId)
VALUES 
                                (1, 1, 3),
                                (2, 3, 3),
                                (3, 2, 2),
                                (4, 4, 1),
                                (5, 7, 3),
                                (6, 6, 2),
                                (7, 5, 4);


CREATE TABLE Examinator (
    Id                  INT             PRIMARY KEY,
    Voornaam            VARCHAR(50),
    Tussenvoegsel       VARCHAR(50),
    Achternaam          VARCHAR(50),
    Mobiel              VARCHAR(20)
);

INSERT INTO Examinator (Id, Voornaam, Tussenvoegsel, Achternaam, Mobiel) 
VALUES 
                        (1, 'Manuel', 'van', 'Meekeren', '06-28493823'),
                        (2, 'Lisette', 'den', 'Dongen', '06-24383299'),
                        (3, 'Jurswailly', '', 'Luciano', '06-28493823'),
                        (4, 'Naswha', '', 'Salawi', '06-34291219');

