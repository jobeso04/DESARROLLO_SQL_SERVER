/* para ver el detalle */

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
     
select @lc_numero1_inicio, @lc_numero1_fin, @lc_numero1_monto
UNION ALL
SELECT @lc_numero2_inicio, @lc_numero2_fin, @lc_numero2_monto
