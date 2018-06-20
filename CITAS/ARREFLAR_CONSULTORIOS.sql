DECLARE @lnmes int = 1
declare @lnanio int = 2018
declare @consultorio_origen varchar(13)= '1012'
declare @lc_medico varchar(4)= 'SEM'
declare @consultorio_destino  varchar(13)= '1012'
UPDATE [SIGSALUD].[dbo].[CITA] set consultorio = @consultorio_destino  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio 
and CONSULTORIO = @consultorio_origen and MEDICO = @lc_medico
UPDATE [SIGSALUD].[dbo].[ARCHIVO_MOV] set consultorio = @consultorio_destino  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio 
and CONSULTORIO = @consultorio_origen and MEDICO = @lc_medico
UPDATE [SIGSALUD].[dbo].[ATENCIONC] set consultorio = @consultorio_destino  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio 
and CONSULTORIO = @consultorio_origen and MEDICO = @lc_medico



select * from [SIGSALUD].[dbo].[ARCHIVO_MOV] where MONTH(fecha) = 1 and YEAR(fecha) = 2018 
and CONSULTORIO = '1012' and MEDICO = 'SEM'

select * from [SIGSALUD].[dbo].[ATENCIONC] WHERE  MONTH(fecha) = 1 and YEAR(fecha) = 2018 
and CONSULTORIO = '1012' and MEDICO = 'SEM'
