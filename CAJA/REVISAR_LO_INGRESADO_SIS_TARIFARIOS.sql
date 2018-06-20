/* VERIFICAR LO INGERSADO */


SELECT [nro], [cpt],[nombre],[sis], operacion, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] 

SELECT [nro], [cpt],[nombre],[sis], operacion, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] 
where operacion = 'NO' ORDER BY CPT DESC

SELECT [nro], [cpt],[nombre],[sis], operacion, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] 
where operacion = 'SI' ORDER BY CPT DESC



SELECT [nro], [cpt],[nombre],[sis], operacion, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] 
where  RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) = '7048601'
7048601
7370204

USE SIGSALUD
declare @lccodcpt varchar(13) = '7048601'
select PRECIOE from PRECIO where ITEM  in (select item from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '7' and codcpt = @lccodcpt)

