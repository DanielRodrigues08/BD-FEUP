.mode columns
.headers on
.nullvalue NULL

SELECT Circuit.name as GP, CarCircuitSetup.idCar, Engine.idComponent as idEngine, pace
FROM Setup, CarCircuitSetup, Circuit, Engine

WHERE Engine.idComponent in (SELECT idComponent FROM Component WHERE Component.idCar = CarCircuitSetup.idCar) 
	AND
	Circuit.idCircuit = CarCircuitSetup.idCircuit AND Setup.idSetup = CarCircuitSetup.idSetup AND  
	pace in (SELECT min(pace) FROM Setup);