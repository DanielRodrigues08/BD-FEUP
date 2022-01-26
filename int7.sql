select idStaff, piecesMade 
from (
select idStaff, count(idPiece) as piecesMade
from StaffMachine 
left join MachinePiece 
on StaffMachine.idMachine=MachinePiece.idMachine
group by idStaff)
where piecesMade = (select max(piecesMade) from (
select idStaff, count(idPiece) as piecesMade
from StaffMachine 
left join MachinePiece 
on StaffMachine.idMachine=MachinePiece.idMachine
group by idStaff) ) ;
