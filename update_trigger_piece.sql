DROP TRIGGER IF EXISTS updatePieceId;
CREATE TRIGGER updatePieceId
AFTER UPDATE OF idPiece ON Piece
FOR EACH ROW
BEGIN
    UPDATE  MachinePiece
    SET idPiece = NEW.idPiece
    WHERE idPiece = OLD.idPiece;

    UPDATE ComponentPiece
    SET idPiece = NEW.idPiece
    WHERE idPiece = OLD.idPiece;
End;

Update Piece set idPiece = 50 where idPiece = 5;