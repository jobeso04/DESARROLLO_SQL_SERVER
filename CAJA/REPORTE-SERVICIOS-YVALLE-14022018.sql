  /* REPORTE DE SERVICIOS */
  
  truncate table [SIGSALUD].[dbo].[TM_RESUL_CAJA]
  declare @lcfecha1 datetime = convert(datetime, '2017-11-30', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-12-28', 101)
  declare @lt_fecha_registro table (fecha_rango datetime);
  insert  @lt_fecha_registro (fecha_rango)
  select Fecha as fecha_rango from [SIGSALUD].[dbo].[PAGOC]   where FECHA between convert(datetime, @lcfecha1, 101)  and convert(datetime, @lcfecha2, 101) and estado = '2' 
     group by FECHA order by fecha 
  select fecha_rango from @lt_fecha_registro 
  
  
     declare @ldfecha datetime = CONVERT(DATETIME, '2017-12-01', 101)
     declare @lcmodulo varchar(50) = 'FARMACIA'
     declare @lc_numero_1_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) <>  @lcmodulo order by FECHA_REGISTRO) 
     declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) <>  @lcmodulo order by FECHA_REGISTRO desc)
     declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) <>  @lcmodulo)
     declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) <>  @lcmodulo order by FECHA_REGISTRO)
     declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) <>  @lcmodulo order by FECHA_REGISTRO desc)
     declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) <>  @lcmodulo)
     --INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])
     select convert(varchar(10), @ldfecha, 103)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
      union all
     select convert(varchar(10), @ldfecha, 103) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto
  
  
   declare @ldfecha1 datetime = @ldfecha
   declare @ldfecha2 datetime = @ldfecha
      SELECT top 1 pagoc.numero from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
    ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
        WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and Estado>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '001'
        order by Pagoc.NUMERO 
        
 SELECT 6234.45 + 2278.00
   
 SELECT 8512.45 - 8225.70
 
 
 --286.75
 
 
 
declare @ldfecha1 datetime = CONVERT(DATETIME, '2017-12-01', 101)
declare @ldfecha2 datetime =CONVERT(DATETIME, '2017-12-01', 101)
declare @lc_numero1_inicio varchar(11) = ( SELECT top 1 PAGOC.NUMERO from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
  ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] 
   ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
     WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and pagoc.ESTADO>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '001'  ORDER BY PAGOC.NUMERO )

 declare @lc_numero1_fin varchar(11) = ( SELECT top 1 PAGOC.NUMERO from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
  ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] 
   ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
    WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and pagoc.ESTADO>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '001'  ORDER BY PAGOC.NUMERO desc )

 declare @lc_numero1_monto int = (SELECT sum(PAGOd.IMPORTE)  from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
  ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] 
   ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
    WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and pagoc.ESTADO>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '001')

declare @lc_numero2_inicio varchar(11) = ( SELECT top 1 PAGOC.NUMERO from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
  ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] 
   ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
     WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and pagoc.ESTADO>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '002'  ORDER BY PAGOC.NUMERO )

 declare @lc_numero2_fin varchar(11) = ( SELECT top 1 PAGOC.NUMERO from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
  ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] 
   ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
    WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and pagoc.ESTADO>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '002'  ORDER BY PAGOC.NUMERO desc )

 declare @lc_numero2_monto int = (SELECT sum(PAGOd.IMPORTE)  from [SIGSALUD].[dbo].[PAGOC] INNER JOIN [SIGSALUD].[dbo].[PAGOD] 
  ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN [SIGSALUD].[dbo].[ITEM] ON Item.Item=PagoD.Item INNER JOIN [SIGSALUD].[dbo].[Grupo_Recaudacion] 
   ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion
    WHERE PagoC.Fecha between @ldfecha1  and @ldfecha2 and pagoc.ESTADO>1 AND Item.Grupo_Recaudacion <> '17' and substring(pagoc.NUMERO,1,3) = '002')
     INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])     
select @ldfecha1, @lc_numero1_inicio, @lc_numero1_fin, @lc_numero1_monto
UNION ALL
SELECT @ldfecha1, @lc_numero2_inicio, @lc_numero2_fin, @lc_numero2_monto

/*

SELECT 5947 + 2278
8225
 
 8225.70
 
 */