Create Trigger U1
Before Update of idStaff on Staff
For Each Row
When exists (select * from Staff where idStaff = New.idStaff)
Begin
Select raise(ignore);
End;