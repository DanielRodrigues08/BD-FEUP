DROP TRIGGER IF EXISTS insertPiece;
CREATE TRIGGER insertPiece
AFTER INSERT ON Piece
FOR EACH ROW
WHEN NEW.condition = 'good' OR NEW.condition = 'medium'
BEGIN
    INSERT INTO  MachinePiece VALUES (4, NEW.idPiece);
    INSERT INTO ComponentPiece VALUES (5, NEW.idPiece);
END;