

-- Check if the database exists
DROP DATABASE IF EXISTS `Mvc-2209c-P4`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `Mvc-2209c-P4`;

-- Use database Mvc-2209a-P4
Use `Mvc-2209c-P4`;


DROP TABLE IF EXISTS Examinator;

CREATE TABLE  Examinator
(
    Id              TINYINT         PRIMARY KEY     NOT NULL    AUTO_INCREMENT
   ,Voornaam        VARCHAR(50)                     NOT NULL
   ,Tussenvoegsel   VARCHAR(10)                     NOT NULL
   ,Achternaam      VARCHAR(50)                     NOT NULL
   ,Mobiel          VARCHAR(12)                     NOT NULL
   ,DatumAangemaakt DateTime(6)                     NOT NULL
   ,DatumGewijzigd  DateTime(6)                     NOT NULL

) ENGINE=InnoDB;




INSERT INTO Examinator
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Mobiel
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     ('Manuel', 'van', 'Meekeren', '06-28493823', SYSDATE(6), SYSDATE(6))
    ,('Lissette', 'den', 'Dongen', '06-24383299', SYSDATE(6), SYSDATE(6))
    ,('Jurswailly', '', 'Luciano', '06-48293846', SYSDATE(6), SYSDATE(6))
    ,('Naswha', '', 'Salawi', '06-34291219', SYSDATE(6), SYSDATE(6));








DROP TABLE IF EXISTS Examen;

CREATE TABLE IF NOT EXISTS Examen
(
    Id                   TINYINT         PRIMARY KEY       NOT NULL    AUTO_INCREMENT
   ,StudentID         VARCHAR(50)                     NOT NULL
   ,Rijschool   VARCHAR(200)                     NOT NULL
   ,Stad             VARCHAR(50)                             NOT NULL    
   ,Rijbewijscategorie          VARCHAR(250)                        NULL    DEFAULT NULL
   ,Datum   varchar(10)   not null
   ,Uitslag  BIT  DEFAULT 0 
   ,DatumAangemaakt      DateTime(6)                     NOT NULL
   ,DatumGewijzigd       DateTime(6)                     NOT NULL

   
) ENGINE=InnoDB;



INSERT INTO Examen
(
     StudentID
    ,Rijschool
    ,Stad
    ,Rijbewijscategorie
    ,Datum
    ,Uitslag
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     ('100234', 'VolGasVooruit', 'Rotterdam', 'B', '03-04-2023', 1, SYSDATE(6) , SYSDATE(6))
    ,('123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '01-03-2023', 1, SYSDATE(6) , SYSDATE(6))
    ,('103234', 'LinksomRechtson', 'Dordrecht', 'D', '15-05-2023',  1,SYSDATE(6) , SYSDATE(6))
    ,('106452', 'OpDeVluchtstrook', 'Zwijndrecht', 'AM', '08-05-2023', 0, SYSDATE(6) , SYSDATE(6))
    ,('104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '17-04-2023', 0, SYSDATE(6) , SYSDATE(6))
    ,('100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '12-05-2023', 1, SYSDATE(6) , SYSDATE(6))
    ,('124444', 'RijlesVoorJou', 'Rotterdam', 'B', '12-04-2023', 1, SYSDATE(6) , SYSDATE(6));
   
    


DROP TABLE IF EXISTS ExamenPerExaminator;

CREATE TABLE IF NOT EXISTS ExamenPerExaminator
(
    Id                   TINYINT         PRIMARY KEY     NOT NULL    AUTO_INCREMENT
   ,ExamenId           TINYINT                 NOT NULL
   ,ExaminatorId        TINYINT                 NOT NULL
   ,DatumAangemaakt      DateTime(6)                     NOT NULL
   ,DatumGewijzigd       DateTime(6)                     NOT NULL

   ,CONSTRAINT  FK_ExamenPerExaminator_ExamenId_Examen_Id  FOREIGN KEY (ExamenId) REFERENCES Examen(Id)
   ,CONSTRAINT  FK_ExamenPerExaminator_ExaminatorId_Examinator_Id  FOREIGN KEY (ExaminatorId) REFERENCES Examinator(Id)
) ENGINE=InnoDB;



INSERT INTO ExamenPerExaminator
(
     ExamenId
    ,ExaminatorId
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     (1, 3,  SYSDATE(6), SYSDATE(6))
    ,(3, 3, SYSDATE(6), SYSDATE(6))
    ,(2, 2, SYSDATE(6), SYSDATE(6))
    ,(4, 1, SYSDATE(6), SYSDATE(6))
    ,(7, 3, SYSDATE(6), SYSDATE(6))
    ,(6, 2, SYSDATE(6), SYSDATE(6))
    ,(5, 4, SYSDATE(6), SYSDATE(6));
    
   
