Create Trigger I3
Before Insert on Pilot
For Each Row
When exists (select * from Pilot where idStaff = New.idStaff)
Begin
  Select raise(ignore);
End;