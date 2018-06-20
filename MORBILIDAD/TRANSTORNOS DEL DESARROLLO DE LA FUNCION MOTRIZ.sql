/* TRANSTORNOS DEL DESARROLLO DE LA FUNCION MOTRIZ*/
USE SIGSALUD 

declare @ldfechainicial datetime = convert(datetime,'2015-10-01', 101)
declare @ldfechafinal datetime = convert(datetime, '2015-10-31',101)
declare @lcperiodo varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'



/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q65%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q66%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q67%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q68%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q74%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q75%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q76%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q77%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q78%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'Q79%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'P94%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'F83%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'F88%' 
UNION ALL
  
  
/* PARA CODIGO 2 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q65%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q66%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q67%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q68%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q74%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q75%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q76%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q77%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q78%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'Q79%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'P94%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'F83%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'F88%' 

UNION ALL

/* PARA CODIGO 3 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q65%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q66%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q67%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q68%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q74%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q75%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q76%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q77%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q78%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'Q79%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'P94%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'F83%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'F88%' 

UNION ALL


/* PARA CODIGO 4 */


Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q65%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q66%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q67%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q68%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q74%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q75%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q76%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q77%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q78%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'Q79%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'P94%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'F83%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'F88%' 

/* PARA CODIGO 5 */
UNION ALL

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q65%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q66%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q67%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q68%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q74%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q75%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q76%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q77%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q78%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'Q79%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'P94%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'F83%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'F88%' 


/* PARA CODIGO 6 */

UNION ALL

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q65%'
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q66%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q67%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q68%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q74%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q75%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q76%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q77%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q78%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'Q79%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'P94%' 

UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'F83%' 
  UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'F88%' 

  
