 /*********** inicio ****/
  USE SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, '2017-07-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-07-31', 101)
  declare @lt_fecha_registro table (fecha_rango datetime);
  insert  @lt_fecha_registro (fecha_rango)
  select  Fecha as fecha_rango from [SIGSALUD].[dbo].[PAGOC]   where FECHA between convert(datetime, @lcfecha1, 101)  and convert(datetime, @lcfecha2, 101) and estado = '2' 
     group by FECHA order by fecha 
 select fecha_rango from @lt_fecha_registro 
 
/*
  
  /* Para la primera y segunda serie */
  declare @ldfecha datetime = '2017-07-01 00:00:00.000' 
  declare @lc_numero_1_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001'  order by FECHA_REGISTRO) 
  declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001'  order by FECHA_REGISTRO desc)
  declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001')
  declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002'  order by FECHA_REGISTRO)
  declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002'  order by FECHA_REGISTRO desc)
  declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002')
  
  declare @lt_resultado table (fecha varchar(10), desde varchar(12), hasta varchar(12), monto numeric(18,2))
  insert @lt_resultado (fecha, desde, hasta, monto)
  select convert(varchar(10), @ldfecha, 101)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
  union all
  select convert(varchar(10), @ldfecha, 101) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto
  select * from @lt_resultado


*/

/***  inicio de servicios **/

/* inicio de primera y segunda serie para farmacia - medicamentos  */
truncate table [SIGSALUD].[dbo].[TM_RESUL_CAJA]
declare @ldfecha datetime = convert(datetime, '2017-07-01 00:00:00.000', 101)
declare @lcmodulo varchar(50) = 'FARMACIA'
declare @lc_numero_1_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO) 
declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo)
declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO)
declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo)

INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])
select convert(varchar(10), @ldfecha, 101)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
union all
select convert(varchar(10), @ldfecha, 101) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto
select * from [SIGSALUD].[dbo].[TM_RESUL_CAJA]





/*** fin ****/

  
  /* declare @lc_numero_1_inicio varchar(11) = */
  
  select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001'  order by FECHA_REGISTRO
  
  select * from [SIGSALUD].[dbo].[PAGOC]   where FECHA = '2017-07-01 00:00:00.000'   and estado = '2' and substring(NUMERO,1,3) = '001'  and modulo = 'FARMACIA' order by FECHA_REGISTRO
  
    select * from [SIGSALUD].[dbo].[PAGOC]   where FECHA = convert(datetime, '2017-07-01 00:00:00.000', 101) 
      and estado = '2' and substring(NUMERO,1,3) = '001'  and modulo = 'FARMACIA' order by FECHA_REGISTRO
      

    select modulo from [SIGSALUD].[dbo].[PAGOC]   where FECHA = convert(datetime, '2017-07-01 00:00:00.000', 101) 
      and estado = '2' and substring(NUMERO,1,3) = '001'  group by MODULO 
      
    select * from [SIGSALUD].[dbo].[PAGOC]   where FECHA = convert(datetime, '2017-07-01 00:00:00.000', 101) 
      and estado = '2' and substring(NUMERO,1,3) = '001'  and MODULO = 'LIQUIDACION'
      
    
select * from [SIGSALUD].[dbo].[PAGOD]   where pagoid in (select PAGOID from [SIGSALUD].[dbo].[PAGOC]   where FECHA = convert(datetime, '2017-07-01 00:00:00.000', 101) 
      and estado = '2' and substring(NUMERO,1,3) = '001'  and MODULO = 'LIQUIDACION') 
          
  
   
   
   
  declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001'  order by FECHA_REGISTRO desc)
  declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001')
  declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002'  order by FECHA_REGISTRO)
  declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002'  order by FECHA_REGISTRO desc)
  declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002')
  
  declare @lt_resultado table (fecha varchar(10), desde varchar(12), hasta varchar(12), monto numeric(18,2))
  insert @lt_resultado (fecha, desde, hasta, monto)
  select convert(varchar(10), @ldfecha, 101)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
  union all
  select convert(varchar(10), @ldfecha, 101) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto
  select * from @lt_resultado



