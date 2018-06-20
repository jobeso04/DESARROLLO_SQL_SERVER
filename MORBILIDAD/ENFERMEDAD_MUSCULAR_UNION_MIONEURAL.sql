/* ENFERMEDAD_MUSCULAR_UNION_MIONEURAL */
USE SIGSALUD 

declare @lcperiodo varchar(6) = '102015'
declare @lcperiodo2 varchar(6) = '102015'

declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'



/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('G120', 'G121', 'G129')
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G71%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G70%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G72%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G73%'
  
  
  
/* PARA CODIGO 2 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('G120', 'G121', 'G129')
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G71%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G70%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G72%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G73%'

/* PARA CODIGO 3 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('G120', 'G121', 'G129')
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G71%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G70%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G72%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G73%'


/* PARA CODIGO 4 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('G120', 'G121', 'G129')
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G71%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G70%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G72%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G73%'


/* PARA CODIGO 5 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('G120', 'G121', 'G129')
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G71%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G70%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G72%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G73%'


/* PARA CODIGO 6 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('G120', 'G121', 'G129')
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G71%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G70%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G72%'
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G73%'
