/* BAJA VISION Y CEGUERA  */

USE SIGSALUD 

declare @lcperiodo varchar(6) = '102015'
declare @lcperiodo2 varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo BETWEEN @lcperiodo and @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'H54%'

UNION ALL   

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo BETWEEN @lcperiodo and @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'H54%'

UNION ALL   

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo BETWEEN @lcperiodo and @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'H54%'

UNION ALL   

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo BETWEEN @lcperiodo and @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'H54%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo BETWEEN @lcperiodo and @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'H54%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo BETWEEN @lcperiodo and @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'H54%'