/* CONSULTA DE AMPUTADOS DE MIEMBROS SUPERIOR */
USE SIGSALUD 
declare @lcperiodo varchar(6) = '102015'
declare @lcperiodo2 varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'


/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('S480', 'S481','S489', 'S580', 'S581', 'S589', 'S680', 'S681', 'S682', 'S683', 'S684', 'S688', 'S689', 'Z890', 'Z891', 'Z892', 'Z893', 'Z898', 'T050', 'T051',
  'T052', 'T056', 'T058','T059', 'Q710', 'Q711', 'Q712', 'Q713')
  
/* PARA CODIGO 2 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('S480', 'S481','S489', 'S580', 'S581', 'S589', 'S680', 'S681', 'S682', 'S683', 'S684', 'S688', 'S689', 'Z890', 'Z891', 'Z892', 'Z893', 'Z898', 'T050', 'T051',
  'T052', 'T056', 'T058','T059', 'Q710', 'Q711', 'Q712', 'Q713')

    
/* PARA CODIGO 3 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('S480', 'S481','S489', 'S580', 'S581', 'S589', 'S680', 'S681', 'S682', 'S683', 'S684', 'S688', 'S689', 'Z890', 'Z891', 'Z892', 'Z893', 'Z898', 'T050', 'T051',
  'T052', 'T056', 'T058','T059', 'Q710', 'Q711', 'Q712', 'Q713')
        
/* PARA CODIGO 4 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('S480', 'S481','S489', 'S580', 'S581', 'S589', 'S680', 'S681', 'S682', 'S683', 'S684', 'S688', 'S689', 'Z890', 'Z891', 'Z892', 'Z893', 'Z898', 'T050', 'T051',
  'T052', 'T056', 'T058','T059', 'Q710', 'Q711', 'Q712', 'Q713')
        
/* PARA CODIGO 5 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2 and COD_SERVSA = @lcservicio and 
CODIGO5 in ('S480', 'S481','S489', 'S580', 'S581', 'S589', 'S680', 'S681', 'S682', 'S683', 'S684', 'S688', 'S689', 'Z890', 'Z891', 'Z892', 'Z893', 'Z898', 'T050', 'T051',
  'T052', 'T056', 'T058','T059', 'Q710', 'Q711', 'Q712', 'Q713')
        
/* PARA CODIGO 6 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo between @lcperiodo AND @lcperiodo2  and COD_SERVSA = @lcservicio and 
CODIGO6 in ('S480', 'S481','S489', 'S580', 'S581', 'S589', 'S680', 'S681', 'S682', 'S683', 'S684', 'S688', 'S689', 'Z890', 'Z891', 'Z892', 'Z893', 'Z898', 'T050', 'T051',
  'T052', 'T056', 'T058','T059', 'Q710', 'Q711', 'Q712', 'Q713')
