use SIGSALUD
declare @ldni varchar(13) = '08392977'
select tiene_firma, * from MEDICO where DNI = @ldni
UPDATE MEDICO SET tiene_firma = '1' where DNI = @ldni
select tiene_firma, * from MEDICO where DNI = @ldni



declare @ldni1 varchar(13) = '06608062'
select tiene_firma, * from MEDICO where DNI = @ldni1
UPDATE MEDICO SET tiene_firma = '1' where DNI = @ldni1
select tiene_firma, * from MEDICO where DNI = @ldni1



SELECT * FROM MEDICO WHERE MEDICO = '055'
