.mode columns
.headers on
.nullvalue NULL
SELECT Department.idDepartment, Department.email, sum(salary)
FROM   Department, Staff, InfrastructureDepartmentStaff
WHERE  Staff.idStaff = InfrastructureDepartmentStaff.idStaff 
	   AND Department.idDepartment  = InfrastructureDepartmentStaff.idDepartment
GROUP BY InfrastructureDepartmentStaff.idDepartment;