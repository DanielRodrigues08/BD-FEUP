.headers on

select Circuit.name as Circuit, Car, Y.Name as PilotName
from (
select idCircuit, Car, name as Name
from (
select idCircuit, Pilot.idCar as Car, idStaff
from (
select idCircuit, idCar, max(pace)
from  CarCircuitSetup 
left join Setup 
on  CarCircuitSetup.idSetup= Setup.idSetup 
group by idCircuit ) as V
left join Pilot 
on V.idCar = Pilot.idCar ) as K
left join Staff 
on K.idStaff = Staff.idStaff) as Y 
left join Circuit
on Y.idCircuit = Circuit.idCircuit ;
