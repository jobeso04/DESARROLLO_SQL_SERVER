/* HIPOACUSIA Y SORDERA  */

USE SIGSALUD 

declare @ldfechainicial datetime = convert(datetime,'2015-10-01', 101)
declare @ldfechafinal datetime = convert(datetime, '2015-10-31',101)
declare @lcperiodo varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'


/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 IN ('H913', 'H901', 'H900', 'H902', 'H905', 'H904', 'H903', 'H906', 'H907', 'H908', 'H910', 'H911', 'H912', 'H919')
UNION ALL   

/* PARA CODIGO 2 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 IN ('H913', 'H901', 'H900', 'H902', 'H905', 'H904', 'H903', 'H906', 'H907', 'H908', 'H910', 'H911', 'H912', 'H919')
  
UNION ALL   

/* PARA CODIGO 3 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 IN ('H913', 'H901', 'H900', 'H902', 'H905', 'H904', 'H903', 'H906', 'H907', 'H908', 'H910', 'H911', 'H912', 'H919')
UNION ALL   
/* PARA CODIGO 4 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 IN ('H913', 'H901', 'H900', 'H902', 'H905', 'H904', 'H903', 'H906', 'H907', 'H908', 'H910', 'H911', 'H912', 'H919')
UNION ALL   
/* PARA CODIGO 5 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 IN ('H913', 'H901', 'H900', 'H902', 'H905', 'H904', 'H903', 'H906', 'H907', 'H908', 'H910', 'H911', 'H912', 'H919')
UNION ALL   
/* PARA CODIGO 6 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 IN ('H913', 'H901', 'H900', 'H902', 'H905', 'H904', 'H903', 'H906', 'H907', 'H908', 'H910', 'H911', 'H912', 'H919')
