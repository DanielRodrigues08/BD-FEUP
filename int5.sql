.mode columns
.headers on
.nullvalue NULL
SELECT name, max(avgPace)
FROM(
SELECT idStaff, round(avg(pace),3) as avgPace
FROM Pilot, Setup, CarCircuitSetup, Car
WHERE Car.idCar = Pilot.idCar AND Car.idCar = CarCircuitSetup.idCar AND Setup.idSetup = CarCircuitSetup.idSetup
GROUP BY idStaff), Staff;