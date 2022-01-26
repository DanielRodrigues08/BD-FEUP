Create Trigger U3
After Update of idStaff on Staff
For Each Row
Begin
Update InfrastructureDepartmentStaff
	Set idStaff = New.idStaff
	Where idStaff = Old.idStaff;
End;