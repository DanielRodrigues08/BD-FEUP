CREATE TRIGGER deleteDepartment
AFTER DELETE ON Department
FOR EACH ROW
BEGIN
	DELETE FROM InfrastructureDepartmentStaff
	WHERE idDepartment = OLD.idDepartment;
END;