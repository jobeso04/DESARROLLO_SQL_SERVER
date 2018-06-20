use SIGSALUD
select * from V_PAGOC
 where  month(fecha) = 1 and YEAR(fecha) = 2016 AND ESTADO = 2 order by fecha, USUARIO asc

select PAGOID, fecha, NOMBRE, '' as COMPRA_O_ATENCION, TOTAL, USUARIO from V_PAGOC
 where  month(fecha) = 1 and YEAR(fecha) = 2016 AND ESTADO = 2 order by fecha, USUARIO asc


DECLARE @lmes int = 1
declare @lanio int = 2016
TRUNCATE TABLE TEMP_PAGOTOTAL
INSERT INTO [SIGSALUD].[dbo].[TEMP_PAGOTOTAL] ([PAGOID],[fecha],[HORA_REGISTRO],[NOMBRE],[COMPRA_O_ATENCION],[TOTAL],[USUARIO])
    SELECT PAGOID, fecha, HORA_REGISTRO, NOMBRE, '' as COMPRA_O_ATENCION, TOTAL, USUARIO from V_PAGOC
 where  month(fecha) = @lmes and YEAR(fecha) = @lanio AND ESTADO = 2 order by PAGOID asc
 
 
SELECT * FROM  TEMP_PAGOTOTAL ORDER BY PAGOID, hora_registro  ASC


update TEMP_PAGOTOTAL set fecha = '' where fecha is null
update TEMP_PAGOTOTAL set hora_registro = '' where hora_registro is null
update TEMP_PAGOTOTAL set nombre = '' where nombre is null
update TEMP_PAGOTOTAL set usuario = '' where usuario is null


SELECT * FROM  TEMP_PAGOTOTAL ORDER BY PAGOID, fecha  desc
select *  from v_PAGOD where PAGOID = '16000050'

select *  from v_PAGOD where PAGOID = '16000052'

select top 1 *  from v_PAGOD where PAGOID = '16000052'

select PAGOID, nombre  from v_PAGOD where PAGOID = '16000052' and ITEM not in ('50063')

select skip 1 *  from v_PAGOD where PAGOID = '16000052'
select  *  from v_PAGOD where PAGOID = '16000052'

select top 1 *  from v_PAGOD where PAGOID = '16000052'
select top 2 *  from v_PAGOD where PAGOID = '16000052'

  INSERT INTO [SIGSALUD].[dbo].[TEMP_PAGOTOTAL] ([PAGOID], FECHA, [COMPRA_O_ATENCION], USUARIO)
            values ('16000052', 'PRUEBA', '')
            
INSERT INTO [SIGSALUD].[dbo].[TEMP_PAGOTOTAL] ([PAGOID], [COMPRA_O_ATENCION])
select PAGOID, nombre as compra_o_atencion from v_PAGOD where PAGOID = '16000052' and ITEM not in ('50063')
            
            
select * from V_PAGOC 
            
 SELECT PAGOID, CONVERT(VARCHAR(10), FECHA,103) AS FECHA, HORA_REGISTRO, NOMBRE, '' as COMPRA_O_ATENCION, TOTAL, USUARIO from V_PAGOC
 where  month(fecha) = @lmes and YEAR(fecha) = @lanio AND ESTADO = 2 order by PAGOID asc            
            
            
            
+  CAST('07:30:00' AS DATETIME)            
declare @lfechainicio datetime = convert(datetime, ?lcfecharegistro1,101) +  CAST('07:30:00' AS DATETIME)


use SIGSALUD 
 DECLARE @lcfecha1 datetime = convert(datetime, '2016-07-27', 101) 
 DECLARE @lcfecha2 datetime = convert(datetime, '2016-07-27', 101)
 TRUNCATE TABLE TEMP_PAGOTOTAL
 INSERT INTO [SIGSALUD].[dbo].[TEMP_PAGOTOTAL] ([PAGOID],[fecha],[HORA_REGISTRO],[NOMBRE],[COMPRA_O_ATENCION],[TOTAL],[USUARIO])
    SELECT PAGOID, CONVERT(VARCHAR(10), FECHA,103) AS FECHA, HORA_REGISTRO, NOMBRE, '' as COMPRA_O_ATENCION, TOTAL, USUARIO from V_PAGOC
 where  FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND ESTADO > 1 AND MODULO = 'FARMACIA'  order by PAGOID asc
  SELECT * FROM  TEMP_PAGOTOTAL
 
 
 
 SELECT * FROM V_PAGOC
 
SELECT PagoD.Item,Item.Nombre,Sum(PagoD.Cantidad) AS Cantidad, Sum(PagoD.Importe) AS Monto 


PagoD.Precio,Item.Clasificador,Clasificador.Nombre AS Nombre_Clasificador FROM PagoC INNER JOIN PagoD
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Clasificador ON Clasificador.Clasificador=Item.Clasificador 
  " WHERE PagoC.Fecha between '" & Format(dtFi.Value, "yyyymmdd") & "' and '" & Format(dtFf.Value, "yyyymmdd") & "' and Estado>1 "






