declare @opeinicio varchar(8) = '15249543'
declare @opefin varchar(8) = '15290275'
declare @lalmacen varchar(1) = 'F'
declare @lfechainicio datetime = convert(datetime, '2015/05/29',101)
declare @lfechafin datetime = convert(datetime, '2015/06/29',101)

Select Min(Operacion) AS Minimo, Max(Operacion) AS Maximo from kardex K inner join OrdenC C on K.Idtransaccion=C.OrdenId 
  where K.Almacen=@lalmacen and C.Fecha_Proceso between @lfechainicio and @lfechafin

select * from kardex where operacion = '15201971'
select * from ordenc where Fecha_Proceso  between @lfechainicio and @lfechafin
select * from ordenc where  ordenid = '1715056558'

Select MAX(Operacion) from v_kardex where Almacen='F'


{Parte_Diario_txt.SALDO}+{@SumSalida}-{@SumIngreso}
//{Parte_Diario_txt.SALDO}+{@SumSalida}-({Parte_Diario_txt.INGRESO_Devolucion}+{Parte_Diario_txt.INGRESO_Anula}+{Parte_Diario_txt.INGRESO_Transfiere})




select k.item,i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
 sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
 sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
  sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
  sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
   sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula, (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
    k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,C.Nombre as Nombre_Clase
      from v_kardex k left outer join tipo_transaccion t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
     where k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,c.nombre order by NOMBRE asc
     
select * from v_kardex where OPERACION between @opeinicio and @opefin and Almacen = @lalmacen and tipo_transaccion<>'IIN'      

select * from stock where item = 170291    


Select Min(Operacion) AS Minimo, Max(Operacion) AS Maximo from kardex K inner join OrdenC C on K.Idtransaccion=C.OrdenId 
  where K.Almacen=@lalmacen and C.Fecha_Proceso between '" & Format(dtF1.Value, "yyyymmdd") & "' and '" & Format(dtF2.Value, "yyyymmdd") & "' "
  
  
  

select * from ordenc where 
select * from v_kardex where OPERACION = '15201971'
select * from v_kardex where OPERACION = '15249542'


