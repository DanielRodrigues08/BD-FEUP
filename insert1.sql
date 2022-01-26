Create Trigger I1
After Insert On Department
For Each Row
When New.budget > 100000
Begin
Insert into Staff values (100, 'Maria', '3/6/1963', '912376586', '563-191-7763', 'mdesqqwe0@opera.com', '4221.42');
Insert into Staff values (101, 'Phineas', '3/27/1992', '433743303', '995-418-3004', 'jonaor1@dion.ne.jp', '2176.62');
Insert into Staff values (102, 'Fernando', '3/27/1992', '19353503', '123-418-3004', 'phoebeor1@dion.ne.jp', '2111.3');
Insert into Staff values (103, 'Rui', '3/27/1992', '1937786803', '995-123-3004', 'fd43@dion.ne.jp', '1222.1);
Insert into Staff values (104, 'Francisco', '3/27/1992', '193712803', '995-418-3111', 'phi1@dion.ne.jp', '5561.6');
End;