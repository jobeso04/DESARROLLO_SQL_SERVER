/* traer el primer registro y ultimo registrio de una tabla  Paciente */ 
use SIGSALUD
go

Declare @lultimo int

select @lultimo = MAX(paciente) from paciente
Select top 1 paciente as PRIMERO,  * from paciente
select paciente AS ULTIMO, * from paciente where paciente = @lultimo
Select top 1 * from paciente
union
select  * from paciente where paciente = @lultimo

select CONVERT(int, paciente) + 1 as paci, CONVERT(int, historia) + 1 as histo, 'Apellidos y Nombres' as apellidos_nombres, 'edad' as edad, 'sexo' as sexo,
'dni' as dni, 'emergencia' as consultorio  from PACIENTE where paciente = @lultimo