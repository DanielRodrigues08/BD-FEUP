Create Trigger U2
After Update Of idStaff on Staff
For Each Row
Begin
Update Apply
Set idStaff = New.idStaff
Where idStaff = Old.idStaff;
End;