CREATE TRIGGER deleteDepartment
AFTER DELETE ON Department
FOR EACH ROW
BEGIN
	DELETE FROM InfrastructureDepartmentStaff
	WHERE idDepartment = OLD.idDepartment;
END;



CREATE TRIGGER deleteInfrasturcture
AFTER DELETE ON Infrastructure
FOR EACH ROW
BEGIN
	DELETE FROM InfrastructureDepartmentStaff
	WHERE idInfrastructure = OLD.idInfrastructure;
END;


CREATE TRIGGER deleteStaff
AFTER DELETE ON Staff
FOR EACH ROW
BEGIN
	DELETE FROM InfrastructureDepartmentStaff
	WHERE idStaff = OLD.idStaff;
END;