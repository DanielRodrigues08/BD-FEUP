.mode columns
.headers on
.nullvalue NULL
select name , avgMaxbyCountry from (select idCountry, avg(avgMax) as avgMaxbyCountry from (select idCircuit, avg(vMax) as avgMax from CarCircuitSetup left join Setup on Setup.idSetup = CarCircuitSetup.idSetup group by idCircuit) as V left join Circuit on Circuit.idCircuit = V.idCircuit group by idCountry) as K left join Country on Country.idCountry = K.idCountry limit 3;