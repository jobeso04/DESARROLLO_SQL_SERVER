USE SIGSALUD
SELECT CODCPT, ITEM, NOMBRE, ACTIVO FROM ITEM WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = ''

SELECT CODCPT, ITEM, NOMBRE, ACTIVO FROM ITEM where nombre like 'INFILTRACIONES INTRAARTI%'

SELECT * FROM dbo.TABLA_SIS_NUEVO where descripcion  like 'INFILTRACIONES INTRAARTI%'
SELECT * FROM dbo.TABLA_SIS_NUEVO where descripcion  like 'riesgo qui%'



SELECT distinct * FROM dbo.TABLA_SIS_NUEVO

2230


2232

SELECT distinct descripcion FROM dbo.TABLA_SIS_NUEVO
SELECT distinct cpt FROM dbo.TABLA_SIS_NUEVO

SELECT descripcion, COUNT(descripcion) as cnt  FROM dbo.TABLA_SIS_NUEVO group by descripcion  order by COUNT(descripcion) desc







select * from dbo.TABLA_SIS_NUEVO where descripcion  like 'RESECCIÓN RADICAL DE TUMOR, HUESO; TIBIA, PERONÉ%'

delete from dbo.TABLA_SIS_NUEVO where NRO = 1957

RESECCIÓN RADICAL DE TUMOR, HUESO; TIBIA, PERONÉ


SELECT CODCPT, * FROM ITEM  where nombre   like 'INFILTRACIONES INTRAARTI%'
SELECT CODCPT, * FROM ITEM  where nombre   like 'riesgo qui%'




delete from dbo.TABLA_SIS_NUEVO where NRO = 2176

SELECT * FROM dbo.TABLA_SIS_NUEVO WHERE TIPO_GRABACION = 'A'


SELECT * FROM dbo.TABLA_SIS_NUEVO

SELECT * FROM dbo.TABLA_SIS_NUEVO WHERE TIPO_GRABACION = 'M'
SELECT * FROM dbo.TABLA_SIS_NUEVO WHERE TIPO_GRABACION = 'A'


select * from item where ITEM in ('63465', '607056')




update item set codcpt = '99199' where ITEM in ('63465', '607056')

update item set codcpt = '99500' where ITEM in ('63466', '607057')    


update ITEM set CODCPT = '99500' whre 

DECLARE @lccodcpt varchar(13) = '33130'
declare @lnpreciosis numeric(9,2) 
declare @lcdescripcion varchar(255) 
set @lnpreciosis = (select PRECIO_SIS from [SIGSALUD].[dbo].[TABLA_SIS_NUEVO] where CPT = @lccodcpt)
set @lcdescripcion = (select DESCRIPCION  from [SIGSALUD].[dbo].[TABLA_SIS_NUEVO] where CPT = @lccodcpt)
update [SIGSALUD].[dbo].[PRECIO] set PRECIOE = @lnpreciosis where ITEM in (SELECT ITEM FROM ITEM WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = @lccodcpt)
Update [SIGSALUD].[dbo].[ITEM]  set NOMBRE = @lcdescripcion where ITEM in (SELECT ITEM FROM ITEM WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = @lccodcpt)
update [SIGSALUD].[dbo].[TABLA_SIS_NUEVO] set tipo_grabacion = 'M' WHERE CPT = @lccodcpt

99500




SELECT CODCPT, ITEM, NOMBRE, ACTIVO FROM [SIGSALUD].[dbo].[ITEM] WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = @lccodcpt




select PRECIOE from [SIGSALUD].[dbo].[PRECIO] where ITEM in (SELECT ITEM FROM ITEM WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = @lccodcpt)
update [SIGSALUD].[dbo].[PRECIO]  set PRECIOE = @lnpreciosis where ITEM in (SELECT ITEM FROM ITEM WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = @lccodcpt)
Update [SIGSALUD].[dbo].[ITEM]  set NOMBRE = @lcdescripcion where ITEM in (SELECT ITEM FROM ITEM WHERE SUBSTRING(ITEM, 1,1) = '6' AND ACTIVO = '7' and CODCPT = @lccodcpt)
