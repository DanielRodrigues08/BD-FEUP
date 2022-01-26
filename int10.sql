select idDepartment, count(idPiece) 
from(
select idDepartment,idMachine 
from InfrastructureDepartmentStaff 
left join StaffMachine 
on InfrastructureDepartmentStaff.idStaff = StaffMachine.idStaff
group by idDepartment ) as V
left join MachinePiece
on MachinePiece.idMachine=V.idMachine 
group by idDepartment ;