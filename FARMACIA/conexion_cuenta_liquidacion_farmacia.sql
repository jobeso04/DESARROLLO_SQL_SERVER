 declare @lcnombre varchar(250) = 'SOTELO PRADO%'
  SELECT CUENTAID, PACIENTE, case when SEGURO = '0' then 'PAGANTE' WHEN SEGURO = '01' THEN 'SIS' WHEN SEGURO = '02' THEN 'SOAT' WHEN SEGURO = '03' THEN 'SEMI SUBSIDIADO' 
   WHEN SEGURO = '04' THEN 'OTROS SEGUROS' WHEN SEGURO = '05' THEN 'CREDITO PACIENTE' WHEN SEGURO = '06' THEN 'ESSALUD' WHEN SEGURO = '07' THEN 'SANIDAD EP' 
   WHEN SEGURO = '08' THEN 'SEGURO PRIVADO' WHEN SEGURO = '09' THEN 'CONSTRUYENDO PERU' WHEN SEGURO = '10' THEN 'SANIDAD FAP'  WHEN SEGURO = '10' THEN 'SANIDAD NAVAL'  
   WHEN SEGURO = '12' THEN 'SANIDAD PNP'  WHEN SEGURO = '13' THEN 'PACIENTE PROGRAMAS'  WHEN SEGURO = '14' THEN 'EXONERADO'  WHEN SEGURO = '15' THEN 'SIS NRUS'  
   WHEN SEGURO = '16' THEN 'INTERCONSULTA'  ELSE 'NO  DEFINIDO' END AS TIPO_SEGURO, convert(varchar(10), fecha_apertura, 103) as FECHA_APER, CARGO, DESCUENTO, ABONO, IMPORTE, ESTADO, HORA_APERTURA, NOMBRE,
   CASE WHEN ORIGEN = 'EM' THEN 'EMERGENCIA' WHEN ORIGEN = 'HO' THEN 'HOSPITALIZACION' WHEN ORIGEN = 'LB' THEN 'LABORATORIO' WHEN ORIGEN = 'CE' THEN 'CONSULTA EXTERNA'  WHEN ORIGEN = 'AD' THEN 'APOYO AL DIAGNOSTICO'
    WHEN ORIGEN = 'OT' THEN 'OTROS' ELSE 'NO DEFINIDO' END AS TIPO_ORIGEN, USUARIO_APERTURA, NROFUA, HORA_APERTURA, FECHA_ACTIVACION, USER_ACTIVACION, PC_ACTIVACION
  FROM [SIGSALUD].[dbo].[CUENTA] where nombre like '%' + @lcnombre + '%'  ORDER BY nrofua DESC    
  
 declare @lc_paciente varchar(11) = '2015250430'
   SELECT ORDENID, CONVERT(VARCHAR(10), FECHA, 103) + ' '  + HORA AS FECHA_IMPRIMIR, FECHA, HORA, HISTORIA, nombre, nombre_transaccion, subtotal, descuento, total, 
      NOMBRE_MEDICO, NOMBRE_CONSULTORIO, USUARIO, CUENTAID, nombre_tipo_atencion, nombre_almacen, especialidad, estado, motivo_anulacion  
       FROM [SIGSALUD].[dbo].[V_ORDENC] WHERE paciente = @lc_paciente  order by ORDENID desc 
       


declare @lc_paciente varchar(11) = '2015250430'
  SELECT ORDENID, CONVERT(VARCHAR(10), FECHA, 103) + ' '  + HORA AS FECHA_IMPRIMIR, FECHA, HORA, HISTORIA, nombre, nombre_transaccion, subtotal, descuento, total, 
      NOMBRE_MEDICO, NOMBRE_CONSULTORIO, USUARIO, CUENTAID, nombre_tipo_atencion, nombre_almacen, especialidad, estado, motivo_anulacion, NOMBRE_TIPO_ATENCION  
       FROM [SIGSALUD].[dbo].[V_ORDENC] WHERE paciente = @lc_paciente  order by ORDENID desc 



declare @lcfecha1 varchar(10) = '2017-07-20'       
declare @lcfecha2 varchar(10) = '2017-07-20'       
declare @lc_paciente_rf varchar(13) = '2015250430'
select ORDENID, convert(varchar(10), fecha, 101) as Fecha, SISMED, NOMBRE, CANTIDAD, PRECIO, DESCUENTO, IMPORTE, TIPO_TRANSACCION, USUARIO from [SIGSALUD].[dbo].[V_ORDEND] 
where fecha between CONVERT(datetime, @lcfecha1, 101) and CONVERT(datetime, @lcfecha2, 101) and PACIENTE = @lc_paciente_rf 
ORDER BY ORDENID, ITEM ASC



declare @lcfecha1 varchar(10) = '2017-07-20'       
declare @lcfecha2 varchar(10) = '2017-07-20'       
declare @lc_paciente_rf varchar(13) = '2015250430'
select * from [SIGSALUD].[dbo].[V_ORDEND] 
where fecha between CONVERT(datetime, @lcfecha1, 101) and CONVERT(datetime, @lcfecha2, 101) and PACIENTE = @lc_paciente_rf 
ORDER BY ORDENID, ITEM ASC





select * from [SIGSALUD].[dbo].[V_ORDEND] 


 declare @lcfecha1 varchar(10) = '2017-07-20'       
 declare @lcfecha2 varchar(10) = '2017-07-20'       
 declare @lc_paciente_rf varchar(13) = '2015250430'
 select 'X' AS INDICADOR, ORDENID, convert(varchar(10), fecha, 101) as Fecha, SISMED, NOMBRE, CANTIDAD, PRECIO, DESCUENTO, IMPORTE, TIPO_TRANSACCION, USUARIO, ITEM, cuentaid, NRO_FUA
 from [SIGSALUD].[dbo].[V_ORDEND]  where fecha between CONVERT(datetime, @lcfecha1, 101) and CONVERT(datetime, @lcfecha2, 101) and PACIENTE = @lc_paciente_rf  AND ESTADO = '3'  ORDER BY ORDENID, ITEM ASC 
 
  
  

  select * from [SIGSALUD].[dbo].[V_ORDEND] 
  where fecha between CONVERT(datetime, @lcfecha1, 101) and CONVERT(datetime, @lcfecha2, 101) and PACIENTE = @lc_paciente_rf  AND ESTADO = '3'  ORDER BY ORDENID, ITEM ASC 
  
  
  
  select 'X' AS INDICADOR, ORDENID, convert(varchar(10), fecha, 101) as Fecha, SISMED, NOMBRE, CANTIDAD, PRECIO, DESCUENTO, IMPORTE, TIPO_TRANSACCION, USUARIO, ITEM, cuentaid, NRO_FUA from [SIGSALUD].[dbo].[V_ORDEND] 
  where fecha between CONVERT(datetime, @lcfecha1, 101) and CONVERT(datetime, @lcfecha2, 101) and PACIENTE = @lc_paciente_rf  AND ESTADO = '3'  ORDER BY ORDENID, ITEM ASC 
  


select numatencion from ATENCION_SEGURO where ID_CUENTA = '1747677' 




SELECT * FROM [SIGSALUD].[dbo].[V_ORDEND] 


declare @lcnombre varchar(250) = 'SOTELO PRADO%'

  SELECT CUENTAID, case when SEGURO = '0' then 'PAGANTE' WHEN SEGURO = '01' THEN 'SIS' WHEN SEGURO = '02' THEN 'SOAT' WHEN SEGURO = '03' THEN 'SEMI SUBSIDIADO' 
   WHEN SEGURO = '04' THEN 'OTROS SEGUROS' WHEN SEGURO = '05' THEN 'CREDITO PACIENTE' WHEN SEGURO = '06' THEN 'ESSALUD' WHEN SEGURO = '07' THEN 'SANIDAD EP' 
   WHEN SEGURO = '08' THEN 'SEGURO PRIVADO' WHEN SEGURO = '09' THEN 'CONSTRUYENDO PERU' WHEN SEGURO = '10' THEN 'SANIDAD FAP'  WHEN SEGURO = '10' THEN 'SANIDAD NAVAL'  
   WHEN SEGURO = '12' THEN 'SANIDAD PNP'  WHEN SEGURO = '13' THEN 'PACIENTE PROGRAMAS'  WHEN SEGURO = '14' THEN 'EXONERADO'  WHEN SEGURO = '15' THEN 'SIS NRUS'  
   WHEN SEGURO = '16' THEN 'INTERCONSULTA'  ELSE 'NO  DEFINIDO' END AS TIPO_SEGURO, convert(varchar(10), fecha_apertura, 103) as FECHA_APER, HORA_APERTURA, CARGO, IMPORTE, ESTADO,  NOMBRE,
   CASE WHEN ORIGEN = 'EM' THEN 'EMERGENCIA' WHEN ORIGEN = 'HO' THEN 'HOSPITALIZACION' WHEN ORIGEN = 'LB' THEN 'LABORATORIO' WHEN ORIGEN = 'CE' THEN 'CONSULTA EXTERNA'  WHEN ORIGEN = 'AD' THEN 'APOYO AL DIAGNOSTICO'
    WHEN ORIGEN = 'OT' THEN 'OTROS' ELSE 'NO DEFINIDO' END AS TIPO_ORIGEN, USUARIO_APERTURA, NROFUA, HORA_APERTURA
  FROM [SIGSALUD].[dbo].[CUENTA] where PACIENTE = '2015250430'
  
  
  
  cuentaid, nombre, tipo_seguro, fecha_aper, hora_apertura,tipo_origen, nrofua
  
  
  
  
  select * from cuenta WHERE CUENTAID = '1747677 '
  
  select * from CUENTADET WHERE CUENTAID = '1747677 '
  
  SELECT 
  
    
  INSERT INTO [SIGSALUD].[dbo].[CUENTADET]([CUENTAID],[ITEM],[PRECIO],[CANTIDAD],[IMPORTE],[DESCUENTO],[TOTAL],[TIPO_PAGO],[CATEGORIA],[ORDENID])
         VALUES (
           (<CUENTAID, char(7),>
           ,<ITEM, char(10),>
           ,<PRECIO, numeric(18,4),>
           ,<CANTIDAD, numeric(10,0),>
           ,<IMPORTE, numeric(18,3),>
           ,<DESCUENTO, numeric(18,3),>
           ,<TOTAL, numeric(18,3),>
           ,<TIPO_PAGO, char(2),>
           ,<CATEGORIA, char(3),>
           ,<ORDENID, varchar(10),>)
GO



  
  
  use SIGSALUD
  declare @lc_origen varchar(13) = '1747617'
  declare @lc_destino varchar(13) = '1747677'
  declare @lc_proforma varchar(13) = '1717091088'
  /*  select * from [SIGSALUD].[dbo].[CUENTA] where CUENTAID = @lc_origen */
  update [SIGSALUD].[dbo].[CUENTADET] set CUENTAID = @lc_destino where CUENTAID = @lc_origen and ORDENID = @lc_proforma
  
  
    select * from [SIGSALUD].[dbo].[CUENTADET] where CUENTAID = @lc_origen and ORDENID = @lc_proforma
  
  
  
  
  select * from [SIGSALUD].[dbo].[CUENTADET] where CUENTAID = @lc_origen and ORDENID = @lc_proforma
  
  
  
  
  
  select * from [SIGSALUD].[dbo].[CUENTA] where CUENTAID = @lc_destino
  select * from [SIGSALUD].[dbo].[CUENTADET] where CUENTAID = @lc_destino
  
  
  
  
 
 
