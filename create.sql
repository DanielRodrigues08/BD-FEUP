PRAGMA FOREIGN_KEYS=ON;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department
(
    idDepartment INTEGER,
    email        TEXT    NOT NULL UNIQUE,
    phone        INTEGER NOT NULL UNIQUE,
    budget       INTEGER NOT NULL,
    CONSTRAINT Department_PK PRIMARY KEY (idDepartment),
    CONSTRAINT POSITIVE_BUDGET CHECK ( budget > 0)
);

DROP TABLE IF EXISTS Boss;
CREATE TABLE Boss(
    idBoss INTEGER,
    isBoss BOOLEAN NOT NULL,
    CONSTRAINT Boss_PK PRIMARY KEY (idBoss)
);

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
    idStaff   INTEGER,
    name      TEXT    NOT NULL,
    birthDate DATE    NOT NULL,
    tin       INTEGER NOT NULL UNIQUE,
    phone     INTEGER NOT NULL UNIQUE,
    email     TEXT    NOT NULL UNIQUE,
    salary    REAL NOT NULL,
    CONSTRAINT Staff_PK PRIMARY KEY (idStaff),
    CONSTRAINT POSITIVE_SALARY CHECK ( salary > 0)
);

DROP TABLE IF EXISTS StaffTeam;
CREATE TABLE StaffTeam
(
    idStaff INTEGER,
    idTeam INTEGER,
    CONSTRAINT Team_FK FOREIGN KEY (idStaff) REFERENCES Staff(idStaff) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Staff_FK FOREIGN KEY (idTeam) REFERENCES Team(idTeam) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT StaffTeam_PK PRIMARY KEY (idTeam, idStaff)
);

DROP TABLE IF EXISTS Gender;
CREATE TABLE Gender
(
    idGender    INTEGER,
    designation TEXT NOT NULL,
    CONSTRAINT Gender_PK PRIMARY KEY (idGender)
);

DROP TABLE IF EXISTS GenderStaff;
CREATE TABLE GenderStaff
(
    idStaff INTEGER,
    idGender INTEGER,
    CONSTRAINT Gender_FK FOREIGN KEY (idStaff) REFERENCES Staff(idStaff) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Staff_FK FOREIGN KEY (idGender) REFERENCES Gender(idGender) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT GenderTeam_PK PRIMARY KEY (idGender, idStaff)
);

DROP TABLE IF EXISTS Team;
CREATE TABLE Team
(
    idTeam         INTEGER,
    name           TEXT NOT NULL UNIQUE,
    foundationDate DATE NOT NULL,
    CONSTRAINT Team_PK PRIMARY KEY (idTeam)
);

DROP TABLE IF EXISTS Country;
CREATE TABLE Country
(
    idCountry INTEGER,
    name      TEXT NOT NULL,
    CONSTRAINT Country_PK PRIMARY KEY (idCountry)
);

DROP TABLE IF EXISTS TeamCountry;
CREATE TABLE TeamCountry
(
    idCountry INTEGER,
    idTeam INTEGER,
    CONSTRAINT Country_FK FOREIGN KEY (idCountry) REFERENCES Country(idCountry) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT  TEAM_FK FOREIGN KEY (idTeam) REFERENCES Team(idTeam) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT TeamCountry_PK PRIMARY KEY (idTeam, idCountry)
);

DROP TABLE IF EXISTS TeamFinancing;
CREATE TABLE TeamFinancing
(
    idTeam INTEGER,
    idFinancing INTEGER,
    CONSTRAINT Financing_FK FOREIGN KEY (idTeam) REFERENCES Team(idTeam) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Team_FK FOREIGN KEY (idFinancing) REFERENCES Financing(idFinancing) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT TeamFinancing_PK PRIMARY KEY (idTeam, idFinancing)
);

DROP TABLE IF EXISTS Financing;
CREATE TABLE Financing
(
    idFinancing     INTEGER,
    investedCapital REAL NOT NULL,
    CONSTRAINT Financing_PK PRIMARY KEY (idFinancing),
    CONSTRAINT POSITIVE_INVESTEDCAPITAL CHECK ( investedCapital > 0)
);

DROP TABLE IF EXISTS FinancingInvestor;
CREATE TABLE FinancingInvestor
(
    idFinancing     INTEGER,
    investedCapital REAL NOT NULL,
    name            TEXT    NOT NULL,
    CONSTRAINT FinancingInvestor_PK PRIMARY KEY (idFinancing),
    CONSTRAINT FinancingInvestor_FK FOREIGN KEY (idFinancing) REFERENCES Financing(idFinancing) ON DELETE CASCADE ON UPDATE CASCADE ,
    CONSTRAINT POSITIVE_INVESTEDCAPITAL CHECK ( investedCapital > 0)
);
DROP TABLE IF EXISTS FinancingSponsor;
CREATE TABLE FinancingSponsor
(
    idFinancing     INTEGER,
    investedCapital REAL NOT NULL,
    duration        DATE    NOT NULL,
    CONSTRAINT FinancingSponsor_PK PRIMARY KEY (idFinancing),
    CONSTRAINT FinancingSponsor_FK FOREIGN KEY (idFinancing) REFERENCES Financing(idFinancing) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT POSITIVE_INVESTEDCAPITAL CHECK ( investedCapital > 0)
);



-- Table: Infrastructure
DROP TABLE IF EXISTS Infrastructure;

CREATE TABLE Infrastructure (
    idInfrastructure    INTEGER,
    address             TEXT    CONSTRAINT nn_infrastructure_address NOT NULL,
    type                TEXT   CONSTRAINT nn_infrastructure_type NOT NULL,
    area                INTEGER CONSTRAINT nn_infrastructure_area NOT NULL,
    CONSTRAINT check_infrastructure_area CHECK( area >0),
    CONSTRAINT Infrastructure_PK PRIMARY KEY (idInfrastructure)
);

DROP TABLE IF EXISTS InfrastructureDepartmentStaff;
CREATE TABLE InfrastructureDepartmentStaff
(
    idInfrastructure INTEGER REFERENCES Infrastructure,
    idStaff INTEGER REFERENCES Staff,
    idDepartment INTEGER REFERENCES Department
);

-- Table: Machine
DROP TABLE IF EXISTS Machine;

CREATE TABLE Machine(
    idMachine               INTEGER,
    function                TEXT    CONSTRAINT nn_machine_function NOT NULL,
    condition               TEXT   CONSTRAINT nn_machine_condition NOT NULL,
    cost                    INTEGER CONSTRAINT nn_machine_cost NOT NULL,
    nextMaintenanceDate     DATE CONSTRAINT nn_machine_nextMaintenanceDate NOT NULL,
    operationalRequirements TEXT    CONSTRAINT nn_machine_operationalRequirements NOT NULL,

    CONSTRAINT check_machine_nextMaintenanceDate CHECK( nextMaintenanceDate>12/12/2021),
    CONSTRAINT Machine_PK PRIMARY KEY (idMachine)
);

DROP TABLE IF EXISTS StaffMachine;

CREATE TABLE StaffMachine(
	idMachine 			    INTEGER,
	idStaff					INTEGER,
	CONSTRAINT Machine_FK FOREIGN KEY (idStaff) REFERENCES Staff(idStaff) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Staff_FK FOREIGN KEY (idMachine) REFERENCES Machine(idMachine) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT StaffMachine_PK PRIMARY KEY (idStaff, idMachine)	
);

-- Table: Piece
DROP TABLE IF EXISTS Piece;

CREATE TABLE Piece(
    idPiece                 INTEGER,
    type                    TEXT    CONSTRAINT nn_piece_function NOT NULL,
    condition               TEXT   CONSTRAINT nn_piece_condition NOT NULL,
    cost                    INTEGER CONSTRAINT nn_piece_cost NOT NULL,
    quantity                INTEGER CONSTRAINT nn_piece_quantity NOT NULL,
    manufacturingDate       DATE CONSTRAINT nn_piece_manufacturingDate NOT NULL,


    CONSTRAINT check_piece_quantity CHECK( quantity>0),
    CONSTRAINT Piece_PK PRIMARY KEY (idPiece)
);

DROP Table IF EXISTS MachinePiece;

CREATE TABLE MachinePiece(
	idMachine				INTEGER,
	idPiece					INTEGER,
	CONSTRAINT Machine_FK FOREIGN KEY (idPiece) REFERENCES Piece(idPiece) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Piece_FK FOREIGN KEY (idMachine) REFERENCES Machine(idMachine) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT MachinePiece_PK PRIMARY KEY (idMachine, idPiece)	
);




-- Table: Pilot
DROP TABLE IF EXISTS Pilot;

CREATE TABLE Pilot(
    idStaff     INTEGER  ,
    weight      INTEGER    CONSTRAINT nn_pilot_weight NOT NULL,
    height      INTEGER    CONSTRAINT nn_pilot_height NOT NULL,
    idCar       INTEGER ,
    CONSTRAINT check_pilot_weight CHECK( weight>=30 AND weight<=150),
    CONSTRAINT idStaff_PK  PRIMARY KEY (idStaff),
    CONSTRAINT idStaff_FK  FOREIGN KEY (idStaff) REFERENCES Staff(idStaff) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT idCar_FK FOREIGN KEY (idCar) REFERENCES Car(idCar) ON DELETE set null ON UPDATE CASCADE
);


-- Table: Car
DROP TABLE IF EXISTS Car;

CREATE TABLE Car(
    idCar       INTEGER PRIMARY KEY,
    cost        INTEGER CONSTRAINT nn_car_cost NOT NULL,

    CONSTRAINT check_car_cost CHECK( cost > 0)
);



-- Table: Circuit
DROP TABLE IF EXISTS Circuit;

CREATE TABLE Circuit(
    idCircuit   INTEGER PRIMARY KEY,
    name        TEXT CONSTRAINT nn_circuit_name UNIQUE ,
    perimeter   INTEGER CONSTRAINT nn_circuit_perimeter NOT NULL,
    idCountry   INTEGER REFERENCES Country(idCountry) ON UPDATE CASCADE ON DELETE SET NULL

);

-- Table: Setup
DROP TABLE IF EXISTS Setup;

CREATE TABLE Setup(
    idSetup         INTEGER PRIMARY KEY,
    vMax            INTEGER CONSTRAINT nn_setup_vMax NOT NULL,
    horsepower      INTEGER CONSTRAINT nn_setup_horsepower NOT NULL,
    downforce       INTEGER CONSTRAINT nn_setup_downforce NOT NULL,
    pace            INTEGER CONSTRAINT nn_setup_pace NOT NULL,
    tirePressure    INTEGER CONSTRAINT nn_setup_tirePressure NOT NULL,
    fuel            INTEGER CONSTRAINT nn_setup_fuel NOT NULL,

    CONSTRAINT check_setup_horsepower CHECK (horsepower> 0),
    CONSTRAINT check_setup_vMax       CHECK (vMax > 0),
    CONSTRAINT check_setup_fuel       CHECK (fuel > 0)

);

-- Table: CarCircuitSetup
DROP TABLE IF EXISTS CarCircuitSetup;

CREATE TABLE CarCircuitSetup(
    idCar       INTEGER REFERENCES Car(idCar) ON UPDATE CASCADE ON DELETE CASCADE ,
    idSetup     INTEGER REFERENCES Setup(idSetup)ON UPDATE CASCADE ON DELETE CASCADE,
    idCircuit   INTEGER REFERENCES Circuit(idCircuit)ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS Component;
CREATE TABLE Component(
    idComponent INTEGER,
    assemblyDate DATE NOT NULL,
    idCar INTEGER,
    CONSTRAINT Component_FK FOREIGN KEY (idCar) REFERENCES Car(idCar) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Component_PK PRIMARY KEY (idComponent)

);


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

DROP TABLE IF EXISTS ComponentPiece;
CREATE TABLE ComponentPiece(
  idComponent INTEGER,
  idPiece INTEGER,
  CONSTRAINT COMPONENTPIECE_PK PRIMARY KEY (idComponent, idPiece),
  CONSTRAINT COMPONENT_FK FOREIGN KEY (idComponent) REFERENCES Component(idComponent) ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT PIECE_FK FOREIGN KEY (idPiece) REFERENCES Piece(idPiece) ON UPDATE CASCADE ON DELETE SET NULL
);