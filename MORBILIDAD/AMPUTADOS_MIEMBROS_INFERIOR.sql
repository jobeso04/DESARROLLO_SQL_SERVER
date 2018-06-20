/* CONSULTA DE AMPUTADOS DE MIEMBROS SUPERIOR */
USE SIGSALUD 

declare @lcperiodo varchar(6) = '102015'
declare @lcperiodo2 varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'



/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('S780', 'S781','S789', 'S880', 'S881', 'S889', 'S980', 'S981', 'S982', 'S983', 'S984', 'Z894', 'Z895', 'Z896', 'Z897', 'T053', 'T054', 'T055', 'Q720', 'Q721',
  'Q722', 'Q723')
  
/* PARA CODIGO 2 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('S780', 'S781','S789', 'S880', 'S881', 'S889', 'S980', 'S981', 'S982', 'S983', 'S984', 'Z894', 'Z895', 'Z896', 'Z897', 'T053', 'T054', 'T055', 'Q720', 'Q721',
  'Q722', 'Q723')

    
/* PARA CODIGO 3 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('S780', 'S781','S789', 'S880', 'S881', 'S889', 'S980', 'S981', 'S982', 'S983', 'S984', 'Z894', 'Z895', 'Z896', 'Z897', 'T053', 'T054', 'T055', 'Q720', 'Q721',
  'Q722', 'Q723')
        
/* PARA CODIGO 4 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('S780', 'S781','S789', 'S880', 'S881', 'S889', 'S980', 'S981', 'S982', 'S983', 'S984', 'Z894', 'Z895', 'Z896', 'Z897', 'T053', 'T054', 'T055', 'Q720', 'Q721',
  'Q722', 'Q723')
        
/* PARA CODIGO 5 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
CODIGO5 in ('S780', 'S781','S789', 'S880', 'S881', 'S889', 'S980', 'S981', 'S982', 'S983', 'S984', 'Z894', 'Z895', 'Z896', 'Z897', 'T053', 'T054', 'T055', 'Q720', 'Q721',
  'Q722', 'Q723')
        
/* PARA CODIGO 6 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
CODIGO6 in ('S780', 'S781','S789', 'S880', 'S881', 'S889', 'S980', 'S981', 'S982', 'S983', 'S984', 'Z894', 'Z895', 'Z896', 'Z897', 'T053', 'T054', 'T055', 'Q720', 'Q721',
  'Q722', 'Q723')
