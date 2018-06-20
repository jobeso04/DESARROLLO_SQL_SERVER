 SELECT RTRIM(upper(NOMBRE_CLASE) + '  ::   ' + convert(varchar(10), COUNT(nombre_clase)))  as TOTAL FROM [SIGSALUD].[dbo].[TMP_PRE_ICI] group by NOMBRE_CLASE
 
 select * from CLASE
 