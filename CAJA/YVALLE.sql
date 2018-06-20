
USE SIGSALUD
SELECT Max(Numero),Min(Numero) FROM PAGOC
 WHERE PagoC.Fecha between convert(datetime, '2017-12-29', 101)  and  convert(datetime, '2018-01-30', 101)  and Estado>1 and CAJA='01'
UNION ALL 

SELECT Max(Numero),Min(Numero) FROM PAGOC
 WHERE PagoC.Fecha between convert(datetime, '2017-12-29', 101)  and  convert(datetime, '2018-01-30', 101)  and Estado>1 and CAJA='02'
 

AND Item.Grupo_Recaudacion<>'FARMACIA'


SELECT PagoD.Item,Item.Nombre,Sum(PagoD.Cantidad) AS Cantidad, Sum(PagoD.Importe) AS Monto,
 PagoD.Precio,Item.Clasificador,Clasificador.Nombre AS Nombre_Clasificador FROM PagoC INNER JOIN PagoD 
   ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Clasificador ON Clasificador.Clasificador=Item.Clasificador 
    WHERE PagoC.Fecha between convert(datetime, '2017-12-29', 101)  and  convert(datetime, '2018-01-30', 101)  and Estado>1
    
    AND  Item.Grupo_Recaudacion
    
    
    SELECT SUM(TOTAL) AS TT FROM PAGOC WHERE Fecha between convert(datetime, '2017-12-29', 101)  and  convert(datetime, '2018-01-30', 101)  and Estado>1
    AND MODULO = 'FARMACIA' 
    
    25879.71
    
    
    SELECT * FROM PAGOC WHERE Fecha between convert(datetime, '2017-12-29', 101)  and  convert(datetime, '2018-01-30', 101)  and Estado>1
    AND MODULO = 'FARMACIA' 
    
    
    SELECT * FROM PAGOC WHERE FECHA_REGISTRO  between convert(datetime, '2017-12-29', 101)  and  convert(datetime, '2018-01-30', 101)  and Estado>1
    AND MODULO = 'FARMACIA' 
    
    SELECT SUM(TOTAL) AS TT FROM PAGOC WHERE FECHA_REGISTRO between CONVERT(datetime, '2017-12-29', 101) + CAST('00:00:00' AS DATETIME) and CONVERT(datetime, '2018-01-30', 101) + CAST('23:59:59' AS DATETIME)
      AND  Estado = '2'  AND MODULO = 'FARMACIA' 
    
    
    SELECT * FROM PAGOC WHERE FECHA_REGISTRO between CONVERT(datetime, '2017-12-29', 101) + CAST('00:00:00' AS DATETIME) and CONVERT(datetime, '2018-01-30', 101) + CAST('23:59:59' AS DATETIME)
      AND  Estado = '2'  AND MODULO = 'FARMACIA' ORDER BY FECHA 
    -- SUM(TOTAL) AS TT
    SELECT  SUM(TOTAL) AS TT FROM PAGOC WHERE FECHA between CONVERT(datetime, '2017-12-29', 101)  and CONVERT(datetime, '2018-01-30', 101)   AND   MODULO = 'FARMACIA' AND  Estado = '2'
    
    SELECT  SUM(TOTAL) AS TT FROM PAGOC WHERE FECHA between CONVERT(datetime, '2017-12-29', 101)  and CONVERT(datetime, '2018-01-30', 101)   AND   MODULO = 'CAJA' AND  Estado = '2'
    
    SELECT  SUM(TOTAL) AS TT FROM PAGOC WHERE FECHA between CONVERT(datetime, '2017-12-29', 101)  and CONVERT(datetime, '2018-01-30', 101)    AND  Estado = '2'
    
    25879
    
    25876
    
    
    
   SELECT PagoD.Item,Item.Nombre,Sum(PagoD.Cantidad) AS Cantidad, Sum(PagoD.Importe) AS Monto, PagoD.Precio,Item.Clasificador,Clasificador.Nombre AS Nombre_Clasificador FROM PagoC INNER JOIN PagoD 
    ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Clasificador ON Clasificador.Clasificador=Item.Clasificador 
    WHERE PagoC.Fecha between CONVERT(datetime, '2017-12-29', 101)  and CONVERT(datetime, '2018-01-30', 101) and Estado>1 AND Item.Grupo_Recaudacion<>'" & gv_GrupoFarmacia & '
    
    SELECT [GRUPO_RECAUDACION],[NOMBRE],[ACTIVO],[GENERAORDEN],[CONTROLASTOCK],[CONTROLPACIENTE]  FROM [SIGSALUD].[dbo].[GRUPO_RECAUDACION]
    
    SELECT * FROM [SIGSALUD].[dbo].[CLASIFICADOR]
    
    SELECT [GRUPO_RECAUDACION],[NOMBRE],[ACTIVO],[GENERAORDEN],[CONTROLASTOCK],[CONTROLPACIENTE]  FROM [SIGSALUD].[dbo].[GRUPO_RECAUDACION]
    
use sigsalud    
SELECT pagod.pagoid,PagoD.Item,Item.Nombre,Sum(PagoD.Cantidad) AS Cantidad, Sum(PagoD.Importe) AS Monto,
 PagoD.Precio,Item.Grupo_Recaudacion,Grupo_Recaudacion.Nombre AS Nombre_GR from PagoC INNER JOIN PagoD 
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Grupo_Recaudacion ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
 WHERE PagoC.Fecha between CONVERT(datetime, '2018-01-19', 101)  and CONVERT(datetime, '2018-01-19', 101) and Estado>1 AND Item.Grupo_Recaudacion = '17'
 GROUP BY pagod.pagoid, PagoD.Item,Item.Nombre,Grupo_Recaudacion.Nombre,Item.Grupo_Recaudacion,PagoD.Precio order by Monto
 
 
 
 
 SELECT * FROM PAGOC WHERE FECHA between CONVERT(datetime, '2017-12-29', 101)  and CONVERT(datetime, '2018-01-30', 101) AND TOTAL  = 24.15
 
 SELECT * FROM PAGOC WHERE FECHA between CONVERT(datetime, '2017-12-29', 101)  and CONVERT(datetime, '2018-01-30', 101) AND USUARIO = 'YVALLE' AND TOTAL  = 769.020
 
 SELECT * FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-05', 101)  and CONVERT(datetime, '2018-01-05', 101) AND USUARIO = 'YVALLE' AND TOTAL  = 769.020
 
 UPDATE PAGOC SET MODULO = 'FARMACIA' WHERE PAGOID = '18008752'
 


SELECT * FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-01', 101)  and CONVERT(datetime, '2018-01-29', 101) AND NOMBRE LIKE 'BOLE%'
SELECT * FROM PAGOD WHERE PAGOID = '18008752'
BOLETAS DE MEDICINAS DEL 04/01/2018


 SELECT * FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101)  AND TOTAL  = 648.93
 
 
 SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA'
 823.65
 
 
 SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA'
 
 823.65
 
  SELECT SUM(IMPORTE) AS TT  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')
  
  823.65
  
  24.15
  
  SELECT SUM(IMPORTE) AS TT  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')
  
  
  
   SELECT * FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'CAJA' 
   
   
   
   
   SELECT SUM(IMPORTE) AS TT  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')

   
   SELECT * FROM PAGOD WHERE PAGOID IN (SELECT PAGOID  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101))
   AND ITEM = '179999'
   
   SELECT TOTAL FROM PAGOC WHERE PAGOID = '18001832'
   SELECT SUM(IMPORTE) AS TT FROM PAGOD WHERE PAGOID = '18001832'
   
   
   SELECT * FROM PAGOC WHERE PAGOID = '18006767'
   SELECT * FROM PAGOD WHERE PAGOID = '18006767'
   
   
   UPDATE PAGOC SET MODULO = 'LIQUIDACION'  WHERE PAGOID = '18001832'
   
   
   SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA'
   823.65
   SELECT SUM(IMPORTE)  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')
   823.65
   
   
   
   SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA'
   
   SELECT SUM(IMPORTE)  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')
   
   179999    
   
   SELECT PagoD.Item,Item.Nombre,Sum(PagoD.Cantidad) AS Cantidad, Sum(PagoD.Importe) AS Monto,
 PagoD.Precio,Item.Grupo_Recaudacion,Grupo_Recaudacion.Nombre AS Nombre_GR from PagoC INNER JOIN PagoD 
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Grupo_Recaudacion ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
 WHERE PagoC.Fecha between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) and Estado>1 AND Item.Grupo_Recaudacion = '17'
 GROUP BY PagoD.Item,Item.Nombre,Grupo_Recaudacion.Nombre,Item.Grupo_Recaudacion,PagoD.Precio ORDER BY ITEM 
 
 SELECT * FROM ITEM WHERE ITEM = '179999'
 
 SELECT PAGOC.PAGOID, PAGOC.FECHA, PAGOC.TOTAL
   from PagoC INNER JOIN PagoD 
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Grupo_Recaudacion ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
  WHERE PagoC.Fecha between CONVERT(datetime, '2018-01-19', 101)  and CONVERT(datetime, '2018-01-19', 101) and Estado>1 AND Item.Grupo_Recaudacion = '17'
   GROUP BY PAGOC.PAGOID, PAGOC.FECHA, PAGOC.TOTAL order by PAGOC.TOTAL
  
  
  GROUP BY PagoD.Item,Item.Nombre,Grupo_Recaudacion.Nombre,Item.Grupo_Recaudacion,PagoD.Precio
 
 
 
 
 
 SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA'
 
   
 SELECT *  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')
 
  SELECT *  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO = 'FARMACIA')
  
  SELECT *  FROM PAGOD WHERE PAGOID IN (SELECT PAGOID FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) AND MODULO IN ('LIQUIDACION'))
  AND SUBSTRING(ITEM,1,2) = '17'
  
  SELECT MODULO  FROM PAGOC WHERE FECHA between CONVERT(datetime, '2018-01-06', 101)  and CONVERT(datetime, '2018-01-06', 101) GROUP BY MODULO 
  
  
  truncate table [SIGSALUD].[dbo].[TM_RESUL_CAJA]
  declare @lcfecha1 datetime = convert(datetime, '2018-01-06', 101)
  declare @lcfecha2 datetime = convert(datetime, '2018-01-06', 101)
  declare @lt_fecha_registro table (fecha_rango datetime);
  insert  @lt_fecha_registro (fecha_rango)
  select Fecha as fecha_rango from [SIGSALUD].[dbo].[PAGOC]   where FECHA between convert(datetime, @lcfecha1, 101)  and convert(datetime, @lcfecha2, 101) and estado = '2' 
     group by FECHA order by fecha 
  select fecha_rango from @lt_fecha_registro 
  
   
    declare @ldfecha datetime = CONVERT(DATETIME, '2018-01-06', 101)
    declare @lcmodulo varchar(50) = 'FARMACIA'
    declare @lc_numero_1_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO) 
    declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
    declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo)
    declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO)
    declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
    declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo)
    -- INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])
    select convert(varchar(10), @ldfecha, 103)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
      union all
    select convert(varchar(10), @ldfecha, 103) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto
     
   

--------- ver fecha ------   
  declare @ldfecha datetime = CONVERT(DATETIME, '2018-01-06', 101)
  declare @lcmodulo varchar(50) = 'FARMACIA'
  declare @lc_numero_1_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO) 
  declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
  declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo)
  declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO)
  declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
  declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo)
    -- INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])
  select convert(varchar(10), @ldfecha, 103)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
      union all
  select convert(varchar(10), @ldfecha, 103) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto


   --- VB 6
   declare @ldfecha1 datetime = @ldfecha
   declare @ldfecha2 datetime = @ldfecha
   SELECT Sum(PagoD.Importe) AS Monto from PagoC INNER JOIN PagoD 
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Grupo_Recaudacion ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
 WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and Estado>1 AND Item.Grupo_Recaudacion = '17'
 
  
  
  
DECLARE @lc_numero  VARCHAR(13) = '001-1875472'
SELECT * FROM PAGOC WHERE NUMERO = @lc_numero
SELECT * FROM PAGOD WHERE PAGOID = (SELECT pagoid FROM PAGOC WHERE NUMERO = @lc_numero)
   
   
   
 
 
 