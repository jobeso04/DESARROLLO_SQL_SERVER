

USE SIGSALUD
SELECT PAGOID, CONVERT(VARCHAR(10), a.FECHA_REGISTRO,101) AS FECHA_DE_PAGO, CONVERT(VARCHAR(5), CONVERT(TIME(7), a.FECHA_REGISTRO)) AS HORA_DE_PAGO, b.HISTORIA, b.NOMBRES, '' CONCEPTO_DE_PAGO, '' UPS, 0 AS CANTIDAD, 0 AS PRECIO, 0 AS IMPORTE 
 FROM 
pagoc a left join PACIENTE b on a.PACIENTE = b.PACIENTE
where a.FECHA between convert(datetime, '2017-01-01',101) and convert(datetime, '2017-06-30',101)


USE SIGSALUD
SELECT * FROM V_PAGOD where pagoid = '17069819'

   




select ITEM, nombre from ITEM where GRUPO_RECAUDACION in  ('02', '04', '06') and SUBSTRING(item,1,1) = '6' and ACTIVO = '1'
union all
select ITEM, nombre from ITEM where  SUBSTRING(item,1,2) = '17'





 