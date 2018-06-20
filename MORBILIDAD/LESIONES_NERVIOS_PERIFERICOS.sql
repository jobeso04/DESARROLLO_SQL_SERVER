/* LESIONES NERVIOS PERIFERICOS */
USE SIGSALUD 

declare @lcperiodo varchar(6) = '102015'
declare @lcperiodo2 varchar(6) = '102015'

declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'


/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G50%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G51%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G52%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G53%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G55%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G56%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G57%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G58%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G59%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G60%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G61%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G62%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G63%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'G64%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'S44%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'S54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'S64%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'S84%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'S94%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'P14%' 
UNION ALL
  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('M501', 'M511','M541', 'M543', 'M544', 'S142', 'S143', 'S242', 'S243', 'S342', 'S343', 'S344')
UNION ALL
  
/* PARA CODIGO 2 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G50%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G51%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G52%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G53%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G54%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G55%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G56%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G57%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G58%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G59%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G60%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G61%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G62%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G63%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'G64%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'S44%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'S54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'S64%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'S84%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'S94%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'P14%' 
UNION ALL
  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('M501', 'M511','M541', 'M543', 'M544', 'S142', 'S143', 'S242', 'S243', 'S342', 'S343', 'S344')

UNION ALL

/* PARA CODIGO 3 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G50%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G51%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G52%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G53%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G54%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G55%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G56%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G57%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G58%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G59%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G60%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G61%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G62%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G63%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'G64%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'S44%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'S54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'S64%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'S84%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'S94%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'P14%' 
UNION ALL
  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('M501', 'M511','M541', 'M543', 'M544', 'S142', 'S143', 'S242', 'S243', 'S342', 'S343', 'S344')
UNION ALL


/* PARA CODIGO 4 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G50%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G51%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G52%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G53%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G54%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G55%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G56%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G57%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G58%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G59%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G60%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G61%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G62%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G63%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'G64%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'S44%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'S54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'S64%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'S84%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'S94%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'P14%' 
UNION ALL
  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('M501', 'M511','M541', 'M543', 'M544', 'S142', 'S143', 'S242', 'S243', 'S342', 'S343', 'S344')

/* PARA CODIGO 5 */

UNION ALL

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G50%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G51%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G52%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G53%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G54%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G55%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G56%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G57%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, CODIGO5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G58%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G59%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G60%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G61%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G62%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G63%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'G64%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'S44%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'S54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'S64%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'S84%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'S94%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'P14%' 
UNION ALL
  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('M501', 'M511','M541', 'M543', 'M544', 'S142', 'S143', 'S242', 'S243', 'S342', 'S343', 'S344')

/* PARA CODIGO 6 */

UNION ALL

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G50%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G51%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G52%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G53%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G54%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G55%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G56%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G57%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, CODIGO6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G58%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G59%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G60%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G61%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G62%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G63%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'G64%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'S44%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'S54%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'S64%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'S84%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'S94%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'P14%' 
UNION ALL
  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2   and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('M501', 'M511','M541', 'M543', 'M544', 'S142', 'S143', 'S242', 'S243', 'S342', 'S343', 'S344')


