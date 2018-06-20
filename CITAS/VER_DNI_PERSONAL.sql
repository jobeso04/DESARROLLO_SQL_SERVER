declare @lcnombre varchar(100) = 'falcon'

select 'MAESTRO' AS MODULO, DNI, nombre, CODIGO from [BDPERSONAL].[dbo].[MAESTRO] where NOMBRE like @lcnombre + '%'
UNION ALL
select 'MEDICO' AS MODULO, DNI, nombre, MEDICO AS CODIGO from [SIGSALUD].[dbo].[medico] where NOMBRE like @lcnombre + '%'
UNION ALL
select 'USUARIO_WEB' AS MODULO, DNI, NOMBRES as nombre, DNI AS CODIGO from [SIGSALUD].[dbo].[USUARIO_web] where NOMBREs like @lcnombre + '%'

084004

UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '10295254' WHERE CODIGO = '084148'
UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '76792690' WHERE CODIGO = '084150'

UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '76792690' WHERE CODIGO = '084150'

UPDATE [sigsalud].[dbo].[medico]  SET DNI = '10295254' WHERE MEDICO = 'CTJ'

UPDATE [sigsalud].[dbo].[medico]  SET DNI = '76818441' WHERE MEDICO = 'CTJ'


UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '76818441' WHERE CODIGO = '084038'

UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '76818441' WHERE CODIGO = '084038'



use bdpersonal
select * from dbo.ACTIVIDAD_DETALLE where codigo = '084004' and MES = 2 and ANIO = 2018
order by ID_ACTIVIDAD


use bdpersonal
select * from dbo.ACTIVIDAD_DETALLE where codigo = '084004' and MES = 2 and ANIO = 2018
order by dia



	declare @lccodigo_medico varchar(10) = '084004'
	declare @lnmes int = 2
	declare @lnanio int = 2018
	declare @ln_actividad int = 35
	select ('DIA' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2) ) AS DIA, CONVERT(DATE, (CONVERT(VARCHAR(4), ANIO)  + '-' + CONVERT(VARCHAR(2), MES) + '-' + CONVERT(VARCHAR(2), DIA))) AS FECHA, TURNO, HORAS  
	from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where CODIGO = @lccodigo_medico and ANIO =  @lnanio and MES = @lnmes and ID_ACTIVIDAD = @ln_actividad
	order by CONVERT(int, dia)



------

UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '42094073' WHERE CODIGO = '054012'

UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '08010224' WHERE CODIGO = '054002'

UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '06775153' WHERE CODIGO = '054005'


UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '10295254' WHERE CODIGO = '084148'
UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '76792690' WHERE CODIGO = '084150'

UPDATE [sigsalud].[dbo].[medico]  SET DNI = '10295254' WHERE MEDICO = 'CTJ'


UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI = '76818441' WHERE CODIGO = '084038'


declare @lcnombre varchar(100) = 'falcon'
select 'MAESTRO' AS MODULO, DNI, nombre, CODIGO from [BDPERSONAL].[dbo].[MAESTRO] where NOMBRE like @lcnombre + '%'
UNION ALL
select 'MEDICO' AS MODULO, DNI, nombre, MEDICO AS CODIGO from [SIGSALUD].[dbo].[medico] where NOMBRE like @lcnombre + '%'
UNION ALL
select 'USUARIO_WEB' AS MODULO, DNI, NOMBRES as nombre, DNI AS CODIGO from [SIGSALUD].[dbo].[USUARIO_web] where NOMBREs like @lcnombre + '%'

--------