
insert into Gender (idGender, designation) values (1, 'Male');
insert into Gender (idGender, designation) values (2, 'Female');


insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (1, 'Marjy', '3/6/1963', '9227253886', '563-191-6091', 'mdesquesnes0@opera.com', '4778.42');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (2, 'Ferd', '3/27/1992', '1937786803', '995-418-3004', 'fdabnor1@dion.ne.jp', '2176.62');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (3, 'Harry', '9/1/1965', '1125286791', '352-724-8987', 'hligerton2@exblog.jp', '2767.75');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (4, 'Katerina', '9/14/1995', '3968166186', '483-379-1539', 'kmanis3@indiatimes.com', '1717.73');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (5, 'Tami', '12/18/1989', '3191255804', '238-806-5978', 'thowat4@cyberchimps.com', '1855.60');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (6, 'Greta', '12/12/1990', '6808708719', '683-228-5430', 'gludman5@macromedia.com', '3536.45');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (7, 'Lynn', '6/4/1999', '9002506233', '606-932-3821', 'lphetteplace6@msn.com', '1710.74');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (8, 'Sammy', '11/11/1986', '5902500094', '283-734-6552', 'stippings7@webeden.co.uk', '1911.28');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (9, 'Ardine', '3/6/1995', '4993351694', '677-166-4669', 'abrewett8@statcounter.com', '1865.65');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (10, 'Rockey', '5/5/1961', '8316603559', '265-884-7428', 'rwhear9@wikipedia.org', '4835.81');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (11, 'Franky', '11/6/1998', '2019830768', '706-523-2093', 'fwragga@hibu.com', '2949.66');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (12, 'Mada', '11/30/1961', '5293304389', '677-688-0105', 'mmerrydewb@princeton.edu', '1661.06');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (13, 'Lacey', '5/28/1965', '7791450803', '827-351-7491', 'lpetchellc@shutterfly.com', '2015.11');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (14, 'Twyla', '2/22/1995', '8182342632', '278-790-7481', 'tcharrissond@hhs.gov', '1602.38');
insert into Staff (idStaff, name, BirthDate, tin, phone, email, salary) values (15, 'Arlyn', '9/30/1961', '2474258341', '974-432-7292', 'abelascoe@foxnews.com', '1850.77');

insert into GenderStaff (idGender, idStaff) values (1, 1);
insert into GenderStaff (idGender, idStaff) values (1, 2);
insert into GenderStaff (idGender, idStaff) values (1, 3);
insert into GenderStaff (idGender, idStaff) values (2, 4);
insert into GenderStaff (idGender, idStaff) values (2, 5);
insert into GenderStaff (idGender, idStaff) values (2, 6);
insert into GenderStaff (idGender, idStaff) values (2, 7);
insert into GenderStaff (idGender, idStaff) values (1, 8);
insert into GenderStaff (idGender, idStaff) values (2, 9);
insert into GenderStaff (idGender, idStaff) values (1, 10);
insert into GenderStaff (idGender, idStaff) values (2, 11);
insert into GenderStaff (idGender, idStaff) values (1, 12);
insert into GenderStaff (idGender, idStaff) values (1, 13);
insert into GenderStaff (idGender, idStaff) values (2, 14);
insert into GenderStaff (idGender, idStaff) values (2, 15);

insert into Country (idCountry, name) values (1, 'Azerbaijan');
insert into Country (idCountry, name) values (2, 'EAU');
insert into Country (idCountry, name) values (3, 'Belgium');
insert into Country (idCountry, name) values (4, 'Portugal');
insert into Country (idCountry, name) values (5, 'Monaco');
insert into Country (idCountry, name) values (6, 'Italy');
insert into Country (idCountry, name) values (7, 'Austria');
insert into Country (idCountry, name) values (8, 'Canada');
insert into Country (idCountry, name) values (9, 'Japan');
insert into Country (idCountry, name) values (10, 'EUA');
insert into Country (idCountry, name) values (11, 'France');
insert into Country (idCountry, name) values (12, 'Brasil');
insert into Country (idCountry, name) values (13, 'Turkey');
insert into Country (idCountry, name) values (14, 'Indonesia');
insert into Country (idCountry, name) values (15, 'Argentina');

insert into Team (idTeam, name, foundationDate) values (1, 'Ferrari', '12/26/1958');

insert into TeamCountry (idCountry, idTeam) values (6, 1);

insert into Boss (idBoss, isBoss) values (1, false);
insert into Boss (idBoss, isBoss) values (2, true);
insert into Boss (idBoss, isBoss) values (3, true);
insert into Boss (idBoss, isBoss) values (4, false);
insert into Boss (idBoss, isBoss) values (5, false);
insert into Boss (idBoss, isBoss) values (6, true);
insert into Boss (idBoss, isBoss) values (7, false);
insert into Boss (idBoss, isBoss) values (8, true);
insert into Boss (idBoss, isBoss) values (9, false);
insert into Boss (idBoss, isBoss) values (10, true);
insert into Boss (idBoss, isBoss) values (11, false);
insert into Boss (idBoss, isBoss) values (12, false);
insert into Boss (idBoss, isBoss) values (13, true);
insert into Boss (idBoss, isBoss) values (14, true);
insert into Boss (idBoss, isBoss) values (15, false);

insert into Financing (idFinancing, investedCapital) values (1, '85218936.87');
insert into Financing (idFinancing, investedCapital) values (2, '16085287.13');
insert into Financing (idFinancing, investedCapital) values (3, '10964540.81');
insert into Financing (idFinancing, investedCapital) values (4, '61067837.80');
insert into Financing (idFinancing, investedCapital) values (5, '96641711.57');
insert into Financing (idFinancing, investedCapital) values (6, '91227837.33');
insert into Financing (idFinancing, investedCapital) values (7, '4778876.47');
insert into Financing (idFinancing, investedCapital) values (8, '82227389.27');
insert into Financing (idFinancing, investedCapital) values (9, '51660889.74');
insert into Financing (idFinancing, investedCapital) values (10, '59410151.42');
insert into Financing (idFinancing, investedCapital) values (11, '79343938.41');
insert into Financing (idFinancing, investedCapital) values (12, '42676948.34');
insert into Financing (idFinancing, investedCapital) values (13, '84620031.28');
insert into Financing (idFinancing, investedCapital) values (14, '93032350.99');
insert into Financing (idFinancing, investedCapital) values (15, '34828734.29');


insert into TeamFinancing (idTeam, idFinancing) values (1, 1);
insert into TeamFinancing (idTeam, idFinancing) values (1, 2);
insert into TeamFinancing (idTeam, idFinancing) values (1, 3);
insert into TeamFinancing (idTeam, idFinancing) values (1, 4);
insert into TeamFinancing (idTeam, idFinancing) values (1, 5);
insert into TeamFinancing (idTeam, idFinancing) values (1, 6);
insert into TeamFinancing (idTeam, idFinancing) values (1, 7);
insert into TeamFinancing (idTeam, idFinancing) values (1, 8);
insert into TeamFinancing (idTeam, idFinancing) values (1, 9);
insert into TeamFinancing (idTeam, idFinancing) values (1, 10);
insert into TeamFinancing (idTeam, idFinancing) values (1, 11);
insert into TeamFinancing (idTeam, idFinancing) values (1, 12);
insert into TeamFinancing (idTeam, idFinancing) values (1, 13);
insert into TeamFinancing (idTeam, idFinancing) values (1, 14);
insert into TeamFinancing (idTeam, idFinancing) values (1, 15);



insert into FinancingInvestor (idFinancing, investedCapital, name) values (1, '85218936.87', 'Dunc');
insert into FinancingInvestor (idFinancing, investedCapital, name) values (2, '16085287.13', 'Myranda');
insert into FinancingInvestor (idFinancing, investedCapital, name) values (3, '10964540.81', 'Antons');
insert into FinancingInvestor (idFinancing, investedCapital, name) values (4, '61067837.80', 'Arney');
insert into FinancingInvestor (idFinancing, investedCapital, name) values (5, '96641711.57', 'Tracie');
insert into FinancingInvestor (idFinancing, investedCapital, name) values (6, '91227837.33', 'Nils');
insert into FinancingInvestor (idFinancing, investedCapital, name) values (7, '4778876.47', 'Perice');

insert into FinancingSponsor (idFinancing, investedCapital, duration) values (8, '82227389.27', '1/27/2025');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (9, '51660889.74', '12/30/2025');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (10, '59410151.42', '5/7/2030');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (11, '79343938.41', '9/19/2025');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (12, '42676948.34', '5/21/2029');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (13, '84620031.28', '4/23/2029');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (14, '93032350.99', '1/28/2024');
insert into FinancingSponsor (idFinancing, investedCapital, duration) values (15, '34828734.29', '9/5/2027');

--Table: Infrastructure
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (1,'Rua das Flores Porto','Wind Tunnel Facility',1234);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (2,'Rua das Malvas Lisboa','Court',123);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (3,'Largo Dr Jose Porto','Secretary',100);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (4,'Rua das Camelias Aveiro','Marketing Building',1000);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (5,'Rua Joana D arc Aveiro','IT Services',10909);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (6,'Rua Vicentina Aveiro','Logistics',9000);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (7,'Rua Naval Aveiro','Aerodynamics',200);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (8,'Rua do Carmo Lisboa','Honda HQ',22200);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (9,'Rua das Valerias Porto','Cosworth HQ',11800);
INSERT INTO Infrastructure(idInfrastructure,address,type,area ) VALUES (10,'Rua das Almirante Alfredo da Costa Coimbra','Pininfarina HQ',800);

--Table: Machine
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (1,'Fit tires', 'good', 100, 2022-12-20,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (2,'Shoot bolts', 'bad', 100, 2022-12-20,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (3,'Fit tires', 'good', 100, 2021-12-20,'Careful handling the pressure gates');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (4,'Fix rotors', 'good', 100, 2022-10-20,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (5,'Battery assembly', 'good', 100, 2022-12-20,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (6,'Repair bodywork', 'good', 100, 2022-11-22,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (7,'Clean Motor', 'good', 100, 2080-10-20,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (8,'Repair paintwork', 'good', 100, 2022-10-30,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (9,'Make rotors', 'good', 100, 2022-11-18,'Nothing too specific');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (10,'Break Engines', 'good', 100, 2030-10-20,'At least break the engine for 500 miles');
INSERT INTO Machine(idMachine, function, condition, cost, nextMaintenanceDate, operationalRequirements) VALUES (11,'Bore Engines', 'good', 100, 2025-12-21,'Nothing too specific');

--Table: Piece
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (1,'bolt','bad',12,120,2001-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (2,'winglette','bad',145,1200,2001-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (3,'canard','bad',99,2,2001-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (4,'rotor','good',120,1,2015-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (5,'commutator','good',300,1,2013-06-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (6,'brushes','good',120,1,2016-12-19);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (7,'piston','good',120,1,2018-07-18);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (8,'rod','good',1,1,2001-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (9,'intake manifold','bad',120,1,2018-11-11);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (10,'axle','good',19,1,2019-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (11,'brake caliper','bad',120,1,2018-07-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (12,'brake piston','medium',120,1,2020-12-17);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (13,'brake drum','good',25,1,2020-08-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (14,'chain','good',23,1,2014-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (15,'head gasket','good',58,1,2014-09-10);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (16,'pedal','good',99,1,2005-12-12);
INSERT INTO Piece(idPiece, type, condition, cost, quantity, manufacturingDate) VALUES (17,'split diff','good',10,1,2009-12-09);

--Table: Car
INSERT INTO Car(idCar,cost) VALUES (1,1200000);
INSERT INTO Car(idCar,cost) VALUES (2,6500000);

--Table: Pilot
INSERT INTO Pilot(idStaff,weight,height,idCar) VALUES (13,70,170,1);
INSERT INTO Pilot(idStaff,weight,height,idCar) VALUES (3,75,180,1);
INSERT INTO Pilot(idStaff,weight,height,idCar) VALUES (5,60,155,2);
INSERT INTO Pilot(idStaff,weight,height,idCar) VALUES (9,87,190,2);

--Table: Circuit  //it requires the table country
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (1,'Monza',2000,1);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (2,'Imola',6000,1);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (3,'Estoril',1900,2);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (4,'Monaco',2000,4);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (5,'Baku',3900,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (6,'Spa',5000,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (8,'Silverston',6000,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (9,'Jeddah',4800,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (10,'RedBull Ring',8900,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (11,'Nurburgring',26900,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (12,'Mugello',4900,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (13,'Villeneuve',3900,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (14,'Detroit',1900,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (15,'Hockenheimring',1800,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (16,'Instanbul Park',2300,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (17,'Marina Bay',4000,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (18,'Suzuka',1200,5);
INSERT INTO Circuit(idCircuit,name,perimeter,idCountry) VALUES (19,'Paul Ricard',1200,5);

--Table: Setup
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (1,320,1000,2000,1,23,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (2,360,1100,1000,1,25,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (3,320,800,3000,1,20,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (4,320,1000,2500,1,20,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (5,299,950,2000,1,21,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (6,310,950,2100,1,21,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (7,290,950,1900,1,26,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (8,270,950,3000,1,27,100);
INSERT INTO Setup(idSetup,vMax,horsepower,downforce,pace,tirePressure,fuel) VALUES (9,329,950,2000,1,22,100);

--Table: CarCircuitSetup
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,6,1);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (2,6,1);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,6,2);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (2,6,2);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,4,3);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,8,1);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (2,9,4);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (2,3,12);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (2,1,10);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,4,6);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,3,19);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,9,15);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,8,14);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,7,13);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,6,12);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,5,11);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,4,10);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,3,9);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,2,8);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,1,1);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,3,2);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,5,3);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,4,4);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,3,5);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,1,6);
INSERT INTO CarCircuitSetup(idCar,idSetup,idCircuit) VALUES (1,5,8);



--Component
insert into Component (idComponent, assemblyDate, idCar) values (1, '2021-07-16', 1);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (2, '2021-02-04', 1);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (3, '2021-04-07', 1);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (4, '2020-12-24', 1);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (5, '2021-10-15', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (6, '2021-06-23', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (7, '2021-11-25', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (8, '2021-03-30', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (9, '2021-09-29', 1);--CHASSIS
insert into Component (idComponent, assemblyDate, idCar) values (10, '2021-06-13', NULL);--CHASSIS
insert into Component (idComponent, assemblyDate, idCar) values (11, '2021-09-13', 1);--ENGINE
insert into Component (idComponent, assemblyDate, idCar) values (12, '2021-02-20', NULL);--ENGINE
insert into Component (idComponent, assemblyDate, idCar) values (13, '2021-09-06', 1);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (14, '2021-09-18', 1);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (15, '2021-03-24', NULL);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (16, '2021-11-13', NULL);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (17, '2021-07-03', 1);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (18, '2020-12-28', 1);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (19, '2021-04-17', 1);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (20, '2021-01-04', 1);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (21, '2021-08-01', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (22, '2021-04-06', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (23, '2021-06-26', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (24, '2021-02-22', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (25, '2021-03-07', 1);--TRANSMISSION
insert into Component (idComponent, assemblyDate, idCar) values (26, '2021-11-20', NULL);--TRANSMISSION
insert into Component (idComponent, assemblyDate, idCar) values (27, '2021-09-29', 1);--WING
insert into Component (idComponent, assemblyDate, idCar) values (28, '2021-10-05', 1);--WING
insert into Component (idComponent, assemblyDate, idCar) values (29, '2021-07-31', NULL);--WING
insert into Component (idComponent, assemblyDate, idCar) values (30, '2021-11-09', NULL);--WING
insert into Component (idComponent, assemblyDate, idCar) values (31, '2021-06-23', 2);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (32, '2021-07-12', 2);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (33, '2021-09-06', 2);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (34, '2021-01-26', 2);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (35, '2021-04-27', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (36, '2021-07-27', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (37, '2021-12-04', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (38, '2021-09-14', NULL);--BRAKE
insert into Component (idComponent, assemblyDate, idCar) values (39, '2021-06-24', 2);--CHASSIS
insert into Component (idComponent, assemblyDate, idCar) values (40, '2021-03-21', NULL);--CHASSIS
insert into Component (idComponent, assemblyDate, idCar) values (41, '2021-10-17', 2);--ENGINE
insert into Component (idComponent, assemblyDate, idCar) values (42, '2021-03-15', NULL);--ENGINE
insert into Component (idComponent, assemblyDate, idCar) values (43, '2021-01-23', 2);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (44, '2021-07-19', 2);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (45, '2021-08-24', NULL);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (46, '2021-01-13', NULL);--SUSPENSION
insert into Component (idComponent, assemblyDate, idCar) values (47, '2021-03-30', 2);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (48, '2021-01-14', 2);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (49, '2021-04-23', 2);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (50, '2021-01-23', 2);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (51, '2021-10-05', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (52, '2021-04-15', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (53, '2021-10-11', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (54, '2021-06-26', NULL);--TIRE
insert into Component (idComponent, assemblyDate, idCar) values (55, '2021-09-12', 2);--WING
insert into Component (idComponent, assemblyDate, idCar) values (56, '2021-03-23', 2);--WING
insert into Component (idComponent, assemblyDate, idCar) values (57, '2021-09-12', NULL);--WING
insert into Component (idComponent, assemblyDate, idCar) values (58, '2021-03-23', NULL);--WING
insert into Component (idComponent, assemblyDate, idCar) values (59, '2021-03-07', 2);--TRANSMISSION
insert into Component (idComponent, assemblyDate, idCar) values (60, '2021-11-20', NULL);--TRANSMISSION


--Supplier

INSERT INTO Supplier (idSupplier, name) VALUES(1,'Ferrari');
INSERT INTO Supplier (idSupplier, name) VALUES(2, 'Mercedes');
INSERT INTO Supplier (idSupplier, name) VALUES(3, 'Renault');
INSERT INTO Supplier (idSupplier, name) VALUES(4, 'Honda');
INSERT INTO Supplier (idSupplier, name) VALUES(5, 'Pirelli');
INSERT INTO Supplier (idSupplier, name) VALUES(6, 'Dallara');
INSERT INTO Supplier (idSupplier, name) VALUES(7, 'Brembo');
INSERT INTO Supplier (idSupplier, name) VALUES(8, 'BOSCH');
INSERT INTO Supplier (idSupplier, name) VALUES(9, 'STARK');

--Info

INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(17,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(18,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(19,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(20,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(21,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(22,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(23,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(24,5,4,1000000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(31,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(32,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(33,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(34,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(35,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(36,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(37,7,8,100000);
INSERT INTO Info (idComponent, idSupplier, duration, payment)VALUES(38,7,8,100000);



--BRAKE
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(1,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(2,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(3,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(4,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(5,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(6,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(7,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(8,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(31,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(32,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(33,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(34,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(35,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(36,1300,50,32);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(37,1300,60,28);
INSERT INTO Brake (idComponent, maxTemp, pressure, size) VALUES(38,1300,60,28);

--CHASSI
INSERT INTO Chassis (idComponent, rigidity) VALUES(9,78);
INSERT INTO Chassis (idComponent, rigidity) VALUES(10,80);
INSERT INTO Chassis (idComponent, rigidity) VALUES(39,67);
INSERT INTO Chassis (idComponent, rigidity) VALUES(40,90);

--ENGINE
INSERT INTO Engine(idComponent, capacity) VALUES(11,1600);
INSERT INTO Engine(idComponent, capacity) VALUES(12,1600);
INSERT INTO Engine(idComponent, capacity) VALUES(41,1600);
INSERT INTO Engine(idComponent, capacity) VALUES(42,1600);

--SUSPENSION
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(13,6,6,1.0);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(14,8,8,1.1);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(15,6,6,1.0);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(16,8,8,1.1);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(43,6,6,1.0);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(44,8,8,1.1);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(45,6,6,1.0);
INSERT INTO Suspension(idComponent, rigidity, antiRollBar, height) VALUES(46,8,8,1.1);

--TRANSMISSION

INSERT INTO Transmission(idCOmponent, differential, ratio) VALUES(25,70,80);
INSERT INTO Transmission(idCOmponent, differential, ratio) VALUES(26,80,90);
INSERT INTO Transmission(idCOmponent, differential, ratio) VALUES(59,70,80);
INSERT INTO Transmission(idCOmponent, differential, ratio) VALUES(60,80,90);


--WING

INSERT INTO Wing(idComponent, degrees) VALUES(27,5);
INSERT INTO Wing(idComponent, degrees) VALUES(28,6);
INSERT INTO Wing(idComponent, degrees) VALUES(29,10);
INSERT INTO Wing(idComponent, degrees) VALUES(30,11);
INSERT INTO Wing(idComponent, degrees) VALUES(55,7);
INSERT INTO Wing(idComponent, degrees) VALUES(56,8);
INSERT INTO Wing(idComponent, degrees) VALUES(57,12);
INSERT INTO Wing(idComponent, degrees) VALUES(58,13);
