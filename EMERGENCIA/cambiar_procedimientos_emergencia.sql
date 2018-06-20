/* programa para cambiar los procedimientos */

declare @lc_buscar varchar(250) = '0'
select CodigoCPT, upper(nombre) as nombre from [SIGSALUD].[dbo].[CPT]
where CodigoCPT like '%' + @lc_buscar + '%' or nombre like '%' + @lc_buscar + '%'



select 1 AS INDICADOR, EMERGENCIA_ID, PROCE_MED_1 as CPT, B.nombre AS PROCEDIMIENTO from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
[SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_1 = B.CodigoCPT where EMERGENCIA_ID = '16038995'
UNION ALL
select 2 AS INDICADOR, EMERGENCIA_ID, PROCE_MED_2 AS CPT, B.nombre AS PROCEDIMIENTO from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
[SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_2 = B.CodigoCPT where EMERGENCIA_ID = '16038995'

update [SIGSALUD].[dbo].[EMERGENCIA] set PROCE_MED_1 = '' where EMERGENCIA_ID = '16038995'

UNION ALL
select 3 AS INDICADOR, EMERGENCIA_ID, PROCE_MED_3 AS CPT, B.nombre AS PROCEDIMIENTO from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
[SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_3 = B.CodigoCPT where EMERGENCIA_ID = '16038995'

select * from [SIGSALUD].[dbo].[EMERGENCIA] where EMERGENCIA_ID = '16038995'

select EMERGENCIA_ID, PROCE_MED_1, B.nombre AS PROCE1, PROCE_MED_2, PROCE_MED_3 from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
[SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_1 = B.CodigoCPT where EMERGENCIA_ID = '16038995'


 DECLARE @lcid_emergencia varchar(13) = '17015426'
  select 1 AS INDICADOR, EMERGENCIA_ID, PROCE_MED_1 as CPT, B.nombre AS PROCEDIMIENTO from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
  [SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_1 = B.CodigoCPT where EMERGENCIA_ID = @lcid_emergencia
  UNION ALL
  select 2 AS INDICADOR, EMERGENCIA_ID, PROCE_MED_2 AS CPT, B.nombre AS PROCEDIMIENTO from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
  [SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_2 = B.CodigoCPT where EMERGENCIA_ID = @lcid_emergencia
  UNION ALL
  select 3 AS INDICADOR, EMERGENCIA_ID, PROCE_MED_3 AS CPT, B.nombre AS PROCEDIMIENTO from [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN
  [SIGSALUD].[dbo].[CPT] B ON A.PROCE_MED_3 = B.CodigoCPT where EMERGENCIA_ID = @lcid_emergencia
  
  
  


SELECT * FROM [SIGSALUD].[dbo].[CPT]
  


 use sigsalud
  select * from dbo.CIEX where ciex = '29105'
  use sigsalud
  update CPT set nombre = 'APLICACIÓN DE FÉRULA LARGA PARA EL BRAZO O PIERNA' where  CodigoCPT = '29105'