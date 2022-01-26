.mode columns
.headers on
.nullvalue NULL
select Wing.idComponent as WingNr, assemblyDate
from Wing
left join
(select idComponent, assemblyDate
from Component) as V
on V.idComponent = Wing.idComponent
order by assemblyDate ASC;