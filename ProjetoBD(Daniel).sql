PRAGMA FOREIGN_KEYS=ON;

DROP TABLE IF EXISTS Component;
CREATE TABLE Component(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Component_PK PRIMARY KEY (idComponent)

);

DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier(
    idSupplier INTEGER,
    name TEXT NOT NULL UNIQUE,
    duration INTEGER NOT NULL ,
    payment INTEGER NOT NULL,
    CONSTRAINT Supplier_PK PRIMARY KEY (idSupplier),
    CONSTRAINT POSITIVE_DURATION CHECK ( duration > 0 ),
    CONSTRAINT POSITIVE_PAYMENT CHECK ( payment>0 )
);

DROP TABLE IF EXISTS ComponentSupplier;
CREATE TABLE ComponentSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier) ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentChassis;
CREATE TABLE ComponentChassis(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    rigidity INTEGER NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ComponentChassis_PK PRIMARY KEY (idComponent),
    CONSTRAINT RIGIDITY_LIMITS CHECK ( rigidity>= 0 AND rigidity<=100)
);

DROP TABLE IF EXISTS ComponentChassisSupplier;
CREATE TABLE ComponentChassisSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES ComponentChassis(idComponent) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier) ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentTire;
CREATE TABLE ComponentTire(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    hardness INTEGER NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ComponentTire_PK PRIMARY KEY (idComponent),
    CONSTRAINT HARDNESS_LIMITS CHECK ( hardness>= 1 AND hardness<=8)
);

DROP TABLE IF EXISTS ComponentTireSupplier;
CREATE TABLE ComponentTireSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES ComponentTire(idComponent)ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier) ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentEngine;
CREATE TABLE ComponentEngine(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    capacity REAL NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ComponentEngine_PK PRIMARY KEY (idComponent),
    CONSTRAINT CAPACITY_LIMITS CHECK ( capacity > 0.0 AND capacity <= 1600.0 )
);

DROP TABLE IF EXISTS ComponentEngineSupplier;
CREATE TABLE ComponentEngineSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier) ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentBrake;
CREATE TABLE ComponentBrake(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    maxTemp REAL NOT NULL,
    pressure REAL NOT NULL,
    size REAL NOT NULL,
    piston INTEGER NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ComponentBrake_PK PRIMARY KEY (idComponent),
    CONSTRAINT MAXTEMP_POSITIVE CHECK ( maxTemp>0 ),
    CONSTRAINT PRESSURE_LIMITS CHECK ( pressure>=50 AND pressure<=100 ),
    CONSTRAINT SIZE_POSITIVE CHECK ( size > 0 ),
    CONSTRAINT PISTON_POSITIVE CHECK ( piston>0 )
);

DROP TABLE IF EXISTS ComponentBrakeSupplier;
CREATE TABLE ComponentBrakeSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES ComponentBrake(idComponent)ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier)ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentSuspension;
CREATE TABLE ComponentSuspension(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    rigidity INTEGER NOT NULL,
    antiRollBar INTEGER NOT NULL,
    height REAL NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ComponentSuspension_PK PRIMARY KEY (idComponent),
    CONSTRAINT RIGIDITY_LIMITS CHECK ( rigidity>=1 AND rigidity<=11 ),
    CONSTRAINT ANTIROLLBAR_LIMITS CHECK ( antiRollBar>=1 AND antiRollBar<= 11 ),
    CONSTRAINT HEIGHT_LIMITS CHECK ( height>=0 AND height<=1.1 )
);

DROP TABLE IF EXISTS ComponentSuspensionSupplier;
CREATE TABLE ComponentSuspensionSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES ComponentSuspension(idComponent)ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier)ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentWing;
CREATE TABLE ComponentWing(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    degrees REAL NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ComponentWing_PK PRIMARY KEY (idComponent),
    CONSTRAINT DEGREES_LIMITS CHECK ( degrees>= 5 AND degrees<=15 )
);

DROP TABLE IF EXISTS ComponentWingSupplier;
CREATE TABLE ComponentWingSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES ComponentWing(idComponent)ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier)ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ComponentTransmission;
CREATE TABLE ComponentTransmission(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    differential REAL NOT NULL,
    ratio REAL NOT NULL,
    chassisNumber INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (chassisNumber) REFERENCES Car(chassisNumber)ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Component_PK PRIMARY KEY (idComponent),
    CONSTRAINT DIFFERENTIAL_LIMITS CHECK ( differential>=50 AND differential<=100 ),
    CONSTRAINT RATIO_LIMITS CHECK ( ratio>=50 AND ratio<=100 )
);

DROP TABLE IF EXISTS ComponentTransmissionSupplier;
CREATE TABLE ComponentTransmissionSupplier(
    idComponent INTEGER,
    idSupplier INTEGER,
    CONSTRAINT ComponentSupplier_PK PRIMARY KEY (idComponent, idSupplier),
    CONSTRAINT Component_FK FOREIGN KEY (idComponent) REFERENCES ComponentTransmission(idComponent)ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Supplier_FK FOREIGN KEY (idSupplier) REFERENCES Supplier(idSupplier)ON DELETE SET NULL ON UPDATE CASCADE
);