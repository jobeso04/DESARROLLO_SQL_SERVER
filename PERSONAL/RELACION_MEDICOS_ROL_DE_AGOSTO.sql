use bdpersonal
declare @lnmes int = 8
declare @lnanio int = 2017


select NOMBRE, UNIDAD_ORGANICA, CARGO_FUNCIONAL, SITUACION_LABORAL from V_MAESTRO
where CODIGO in (select codigo from asistencia where MES = @lnmes and AÑO = @lnanio and IdServDepartUnid in (select IdServDepartUnid from dbo.ServicioDepartUnidad 
 where IdDepartUnid in (select IdDepartUnid from dbo.DepartamentoUnidad where IdDepartUnid in ('4', '5', '13', '14', '15', '16', '17', '18', '24', '25', '30')
and Codigo not in ('0222', '0372', '0262', '0263', '0264', '0265', '0266', '0267', '0284', '0239', '0268', '0242')))
group by CODIGO ) and cargo_funcional not in ('OBSTETRIZ', 'ENFERMERA/O') order by NOMBRE asc
