CREATE TRIGGER deleteStaff
AFTER DELETE ON Staff
FOR EACH ROW
BEGIN
	DELETE FROM InfrastructureDepartmentStaff
	WHERE idStaff = OLD.idStaff;
END;
