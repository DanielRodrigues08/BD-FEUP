PRAGMA FOREIGN_KEYS=ON;

DROP TABLE IF EXISTS Component;
CREATE TABLE Component(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    idCar INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (idCar) REFERENCES Car(idCar) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Component_PK PRIMARY KEY (idComponent)

);
/*
DROP TABLE IF EXISTS ComponentPiece;
CREATE TABLE ComponentPiece(
    idComponent INTEGER,
    idPiece INTEGER,
    CONSTRAINT ComponentPiece_PK PRIMARY KEY(idComponent, idPiece),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Piece_FK FOREIGN KEY (idPiece) REFERENCES Piece(idPiece) ON DELETE SET NULL ON UPDATE CASCADE
)*/

DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier(
    idSupplier INTEGER,
    name TEXT NOT NULL UNIQUE,
    CONSTRAINT Supplier_PK PRIMARY KEY (idSupplier)

);

DROP TABLE IF EXISTS Info;
CREATE TABLE Info(
    idComponent INTEGER,
    idSupplier INTEGER,
    duration INTEGER NOT NULL ,
    payment INTEGER NOT NULL,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT POSITIVE_DURATION CHECK ( duration > 0 ),
    CONSTRAINT POSITIVE_PAYMENT CHECK ( payment>0 )
);

DROP TABLE IF EXISTS Chassis;
CREATE TABLE Chassis(
    idComponent INTEGER,
    rigidity INTEGER NOT NULL,
    CONSTRAINT Chassis_PK PRIMARY KEY (idComponent),
    CONSTRAINT Chassis_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT ,
    CONSTRAINT RIGIDITY_LIMITS CHECK ( rigidity>= 0 AND rigidity<=100)
);

DROP TABLE IF EXISTS Tire;
CREATE TABLE Tire(
    idComponent INTEGER,
    hardness INTEGER NOT NULL,
    kmsCovered REAL NOT NULL,
    CONSTRAINT Tire_PK PRIMARY KEY (idComponent),
    CONSTRAINT Tire_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT HARDNESS_LIMITS CHECK ( hardness>= 1 AND hardness<=8),
    CONSTRAINT KMSCOVERED_LIMITS CHECK ( kmsCovered > 0)
);

DROP TABLE IF EXISTS Engine;
CREATE TABLE Engine(
    idComponent INTEGER,
    capacity REAL NOT NULL,
    CONSTRAINT Engine_PK PRIMARY KEY (idComponent),
    CONSTRAINT Engine_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT CAPACITY_LIMITS CHECK ( capacity > 0.0 AND capacity <= 1600.0 )
);

DROP TABLE IF EXISTS Brake;
CREATE TABLE Brake(
    idComponent INTEGER,
    maxTemp REAL NOT NULL,
    pressure REAL NOT NULL,
    size REAL NOT NULL,
    CONSTRAINT Brake_PK PRIMARY KEY (idComponent),
    CONSTRAINT Brake_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT MAXTEMP_POSITIVE CHECK ( maxTemp>0 ),
    CONSTRAINT PRESSURE_LIMITS CHECK ( pressure>=50 AND pressure<=100 ),
    CONSTRAINT SIZE_POSITIVE CHECK ( size > 0 )
);

DROP TABLE IF EXISTS Suspension;
CREATE TABLE Suspension(
    idComponent INTEGER,
    rigidity INTEGER NOT NULL,
    antiRollBar INTEGER NOT NULL,
    height REAL NOT NULL,
    CONSTRAINT Suspension_PK PRIMARY KEY (idComponent),
    CONSTRAINT Suspension_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT RIGIDITY_LIMITS CHECK ( rigidity>=1 AND rigidity<=11 ),
    CONSTRAINT ANTIROLLBAR_LIMITS CHECK ( antiRollBar>=1 AND antiRollBar<= 11 ),
    CONSTRAINT HEIGHT_LIMITS CHECK ( height>=0 AND height<=1.1 )
);

DROP TABLE IF EXISTS Wing;
CREATE TABLE Wing(
    idComponent INTEGER,
    degrees REAL NOT NULL,
    CONSTRAINT Wing_PK PRIMARY KEY (idComponent),
    CONSTRAINT Wing_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT DEGREES_LIMITS CHECK ( degrees>= 5 AND degrees<=15 )
);

DROP TABLE IF EXISTS Transmission;
CREATE TABLE Transmission(
    idComponent INTEGER,
    differential REAL NOT NULL,
    ratio REAL NOT NULL,
    CONSTRAINT Component_PK PRIMARY KEY (idComponent),
    CONSTRAINT Suspension_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT DIFFERENTIAL_LIMITS CHECK ( differential>=50 AND differential<=100 ),
    CONSTRAINT RATIO_LIMITS CHECK ( ratio>=50 AND ratio<=100 )
);

DROP TABLE IF EXISTS Car;
CREATE TABLE Car(
    idCar INTEGER PRIMARY KEY ,
    cost FLOAT
);

