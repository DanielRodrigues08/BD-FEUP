CREATE TRIGGER deleteInfrasturcture
AFTER DELETE ON Infrastructure
FOR EACH ROW
BEGIN
	DELETE FROM InfrastructureDepartmentStaff
	WHERE idInfrastructure = OLD.idInfrastructure;
END;
