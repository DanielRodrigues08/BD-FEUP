PRAGMA foreign_keys = on;

--Car
INSERT INTO Car VALUES(1,14050780);
INSERT INTO Car VALUES(2,14040583);


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
