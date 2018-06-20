/* CONSULTA DE LESIONES MEDULARES */
USE SIGSALUD 

declare @ldfechainicial datetime = convert(datetime,'2015-10-01', 101)
declare @ldfechafinal datetime = convert(datetime, '2015-10-31',101)
declare @lcperiodo varchar(6) = '102015'
declare @lcservicio varchar(6) = '302201'
declare @lcservicio2 varchar(6) = '302201'

/* PARA CODIGO 1 */

Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('T093', 'S140','S141') 
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'S24%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('S240', 'S241') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'S34%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('S340', 'S341', 'S346') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'G95%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('G952', 'G959', 'G992', 'G834', 'M471', 'M480', 'M490', 'M500', 'M511', 'G320', 'G373', 'A800', 'C720', 'C721', 'D334', 'G951', 'E538', 'G958',
  'T812', 'G971', 'G114', 'G950', 'G360')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'G35%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'Q05%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'Q06%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('G041', 'G042', 'G048', 'G049')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'G05%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('A239', 'A178')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'B94%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO1 LIKE 'B91%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo1 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO1 in ('B238', 'B679', 'B690')
  
/* PARA CODIGO 2 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('T093', 'S140','S141') 
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'S24%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('S240', 'S241') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'S34%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('S340', 'S341', 'S346') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'G95%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('G952', 'G959', 'G992', 'G834', 'M471', 'M480', 'M490', 'M500', 'M511', 'G320', 'G373', 'A800', 'C720', 'C721', 'D334', 'G951', 'E538', 'G958',
  'T812', 'G971', 'G114', 'G950', 'G360')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'G35%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'Q05%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'Q06%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('G041', 'G042', 'G048', 'G049')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'G05%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('A239', 'A178')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'B94%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO2 LIKE 'B91%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo2 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO2 in ('B238', 'B679', 'B690')
    
/* PARA CODIGO 3 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('T093', 'S140','S141') 
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'S24%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('S240', 'S241') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'S34%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('S340', 'S341', 'S346') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'G95%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('G952', 'G959', 'G992', 'G834', 'M471', 'M480', 'M490', 'M500', 'M511', 'G320', 'G373', 'A800', 'C720', 'C721', 'D334', 'G951', 'E538', 'G958',
  'T812', 'G971', 'G114', 'G950', 'G360')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'G35%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'Q05%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'Q06%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('G041', 'G042', 'G048', 'G049')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'G05%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('A239', 'A178')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'B94%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO3 LIKE 'B91%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo3 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO3 in ('B238', 'B679', 'B690')
        
        
/* PARA CODIGO 4 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('T093', 'S140','S141') 
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'S24%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('S240', 'S241') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'S34%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('S340', 'S341', 'S346') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'G95%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('G952', 'G959', 'G992', 'G834', 'M471', 'M480', 'M490', 'M500', 'M511', 'G320', 'G373', 'A800', 'C720', 'C721', 'D334', 'G951', 'E538', 'G958',
  'T812', 'G971', 'G114', 'G950', 'G360')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'G35%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'Q05%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'Q06%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('G041', 'G042', 'G048', 'G049')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'G05%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('A239', 'A178')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'B94%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO4 LIKE 'B91%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo4 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO4 in ('B238', 'B679', 'B690')
                
        
/* PARA CODIGO 5 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('T093', 'S140','S141') 
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'S24%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('S240', 'S241') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'S34%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('S340', 'S341', 'S346') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'G95%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('G952', 'G959', 'G992', 'G834', 'M471', 'M480', 'M490', 'M500', 'M511', 'G320', 'G373', 'A800', 'C720', 'C721', 'D334', 'G951', 'E538', 'G958',
  'T812', 'G971', 'G114', 'G950', 'G360')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'G35%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'Q05%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'Q06%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('G041', 'G042', 'G048', 'G049')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'G05%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('A239', 'A178')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'B94%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO5 LIKE 'B91%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo5 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO5 in ('B238', 'B679', 'B690')
                
        
/* PARA CODIGO 6 */
UNION ALL
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO  from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('T093', 'S140','S141') 
UNION ALL  
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'S24%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('S240', 'S241') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'S34%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('S340', 'S341', 'S346') 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'G95%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('G952', 'G959', 'G992', 'G834', 'M471', 'M480', 'M490', 'M500', 'M511', 'G320', 'G373', 'A800', 'C720', 'C721', 'D334', 'G951', 'E538', 'G958',
  'T812', 'G971', 'G114', 'G950', 'G360')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'G35%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'Q05%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'Q06%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('G041', 'G042', 'G048', 'G049')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'G05%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('A239', 'A178')
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'B94%' 
UNION ALL
   Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
   CODIGO6 LIKE 'B91%' 
UNION ALL   
Select periodo, sexo, anio, mes, dia, fichafam, edad, tipoedad, COD_SERVSA, HSERVICIO, codigo6 AS CODIGO from HIS where periodo = @lcperiodo  and COD_SERVSA = @lcservicio and 
  CODIGO6 in ('B238', 'B679', 'B690')
  

     
     
  
                        
                