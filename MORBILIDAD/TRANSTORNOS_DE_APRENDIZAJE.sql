/* TRANSTORNOS DE APRENDIZAJE  */


USE SIGSALUD 

declare @ldfechainicial datetime = convert(datetime,'2015-10-01', 101)
declare @ldfechafinal datetime = convert(datetime, '2015-10-31',101)
declare @lcperiodo varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'


/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 IN ('F810', 'F811', 'F812', 'F813', 'F818', 'F819', 'F8191', 'F8192', 'F8193', 'F8194', 'F900', 'F9001', 'F9002', 'F9003', 'F901', 'F908', 'F909', 'F845', 'Z558')
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'F91%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 LIKE 'F82%'

UNION ALL  
/* PARA CODIGO 2 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 IN ('F810', 'F811', 'F812', 'F813', 'F818', 'F819', 'F8191', 'F8192', 'F8193', 'F8194', 'F900', 'F9001', 'F9002', 'F9003', 'F901', 'F908', 'F909', 'F845', 'Z558')
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'F91%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 LIKE 'F82%'

UNION ALL   

/* PARA CODIGO 3 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 IN ('F810', 'F811', 'F812', 'F813', 'F818', 'F819', 'F8191', 'F8192', 'F8193', 'F8194', 'F900', 'F9001', 'F9002', 'F9003', 'F901', 'F908', 'F909', 'F845', 'Z558')
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'F91%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 LIKE 'F82%'


UNION ALL   
/* PARA CODIGO 4 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 IN ('F810', 'F811', 'F812', 'F813', 'F818', 'F819', 'F8191', 'F8192', 'F8193', 'F8194', 'F900', 'F9001', 'F9002', 'F9003', 'F901', 'F908', 'F909', 'F845', 'Z558')
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'F91%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 LIKE 'F82%'

UNION ALL   
/* PARA CODIGO 5 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 IN ('F810', 'F811', 'F812', 'F813', 'F818', 'F819', 'F8191', 'F8192', 'F8193', 'F8194', 'F900', 'F9001', 'F9002', 'F9003', 'F901', 'F908', 'F909', 'F845', 'Z558')
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'F91%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 LIKE 'F82%'

UNION ALL   
/* PARA CODIGO 6 */
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 IN ('F810', 'F811', 'F812', 'F813', 'F818', 'F819', 'F8191', 'F8192', 'F8193', 'F8194', 'F900', 'F9001', 'F9002', 'F9003', 'F901', 'F908', 'F909', 'F845', 'Z558')
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'F91%'
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 LIKE 'F82%'
