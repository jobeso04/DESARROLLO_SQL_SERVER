use sigsalud
declare @fecha_actual datetime = CONVERT(DATETIME, '2016-11-01', 101) /* fecha_actual, seleccionada */
declare @fecha1 datetime =  CONVERT(datetime, DATEADD(dd,-(DAY(@fecha_actual)-1),@fecha_actual),101) + CAST('00:00:00' as datetime) 
declare @fecha2 datetime
declare @fecha11 datetime 
declare @ndias varchar(10)
set @ndias = convert(varchar(8),dateadd(month,1, @fecha1),112)
set @fecha2 = dateadd(day,-1,left(@ndias,6)+'01')  +  CAST('23:59:59' as datetime)
set @fecha11 = @fecha1
select upper(nombre_transaccion) as TRANSACCION , sum(round(importe,2)) as total from V_KARDEX where FECHA between @fecha1 and  @fecha1 + CAST('23:59:59' as datetime) and ALMACEN = 'F'   and TIPO_TRANSACCION in ('VC')
 group by nombre_transaccion order by FECHA asc




where FECHA = @fecha1 and ALMACEN = 'F'   and TIPO_TRANSACCION in ('VC')





select upper(nombre_transaccion) as TRANSACCION , sum(round(importe,2)) as total  from v_KARDEX 
where FECHA between @fecha1  and @fecha2  and ALMACEN = 'F'  and ESTADO = '3' and TIPO_TRANSACCION in ('VC')
group by nombre_transaccion order by nombre_transaccion asc




select *  from v_KARDEX 
where FECHA between @fecha1  and @fecha2  and ALMACEN = 'F'  and ESTADO = '3' and TIPO_TRANSACCION in ('VC')
 order by nombre_transaccion asc



select upper(nombre_transaccion) as TRANSACCION , sum(round(importe,2)) as total  from v_KARDEX 
where FECHA between @fecha1  and @fecha2  and ALMACEN = 'F'  and ESTADO = '3' and TIPO_TRANSACCION in ('VC', 'VEX', 'VOC', 'VOD', 'VOI', 'VON', 'VOP', 'VRD', 'VRI', 'VRO', 'VRP', 'VRS', 'VRT', 'VRU', 'VTB')
group by nombre_transaccion order by nombre_transaccion asc

:





select *  from v_KARDEX 
where FECHA between @fecha1  and @fecha2  and ALMACEN = 'F'  and ESTADO = '3' 
and TIPO_TRANSACCION in ('VC', 'VEX', 'VOC', 'VOD', 'VOI', 'VON', 'VOP', 'VRD', 'VRI', 'VRO', 'VRP', 'VRS', 'VRT', 'VRU', 'VTB')






select upper(nombre_transaccion) as TRANSACCION , sum(round(importe,2)) as total  from v_KARDEX 
where FECHA between @fecha1  and @fecha2  and ALMACEN = 'F'  and ESTADO = '3' and TIPO_TRANSACCION in ('VC', 'VEX', 'VOC', 'VOD', 'VOI', 'VON', 'VOP', 'VRD', 'VRI', 'VRO', 'VRP', 'VRS', 'VRT', 'VRU', 'VTB')
group by nombre_transaccion order by nombre_transaccion asc

select FECHA,   PROVEEDOR, OBSERVACION, TOTAL, REFERENCIA, TIPO_DOCUMENTO, DOCUMENTO, MODALIDAD_COMPRA
 from INGRESOC where FECHA between CONVERT(datetime, '2016-01-01', 101) and CONVERT(datetime, '2016-12-31', 101) and TIPO_TRANSACCION = 'ICO' AND ESTADO = '2' order by TIPO_TRANSACCION asc


