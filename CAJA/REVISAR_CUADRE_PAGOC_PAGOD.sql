--------- ver fecha ------   
  declare @ldfecha datetime = CONVERT(DATETIME, '2018-01-19', 101)
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
   
   /*
   SELECT pagod.item, item.nombre, PagoD.Importe AS Monto from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN 
 [SIGSALUD].[dbo].[Grupo_Recaudacion]  ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
 WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and Estado>1 AND Item.Grupo_Recaudacion = '17' 
 */
 /* 
  use SIGSALUD
  select * from item where ITEM = '60067'
  
  select * from item where ITEM = '60067'
  
  */
 
   SELECT Sum(PagoD.Importe) AS Monto from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN 
 [SIGSALUD].[dbo].[Grupo_Recaudacion]  ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
 WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and Estado>1 AND Item.Grupo_Recaudacion = '17' 
 
 SELECT SUM(IMPORTE) AS TT FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
 LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR
 WHERE PAGOID IN (SELECT PAGOID FROM [SIGSALUD].[dbo].[PAGOC] WHERE FECHA BETWEEN CONVERT(DATETIME, '2018-01-19', 101) AND CONVERT(DATETIME, '2018-01-19', 101) AND 
 ESTADO > '1') AND C.CLASIFICADOR = '1.3.1.6.12' 
 
 
 
 /* PARA DIFERENCIA FINAL */
 
 DECLARE @lc_fecha_no_17 datetime = CONVERT(DATETIME, '2018-01-19', 101)
  SELECT CONVERT(VARCHAR(10), D.FECHA,103) AS FECHA, D.NUMERO,  A.IMPORTE FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
 LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR
 LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID
 WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'
 
 
 
 
 
 
 
  
  
 /* 
DECLARE @lc_numero  VARCHAR(13) = '001-1875472'
SELECT * FROM PAGOC WHERE NUMERO = @lc_numero
SELECT * FROM PAGOD WHERE PAGOID = (SELECT pagoid FROM PAGOC WHERE NUMERO = @lc_numero)
   */
   
   
 