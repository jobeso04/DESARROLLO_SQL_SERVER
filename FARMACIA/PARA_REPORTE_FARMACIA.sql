use SIGSALUD
declare @opeinicio varchar(8) = '16175588'
declare @opefin varchar(8) = '16231135'
declare @lalmacen varchar(1) = 'F'

select k.item,i.nombre,MAX(k.PRECIO) AS Precio, sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado, sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
 sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS, sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
 sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
  sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria, sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
  sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
   sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere, sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
   sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula, (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) 
    from Kardex k2 Where   k2.Operacion Between  @opeinicio and  @opefin and k2.almacen=@lalmacen and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,C.Nombre as Nombre_Clase
      from v_kardex k left outer join tipo_transaccion t on t.tipo_transaccion=k.Tipo_Transaccion   left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase 
     where k.Operacion between @opeinicio and @opefin and k.almacen=@lalmacen  group by k.item,i.nombre,i.clase,c.nombre order by Clase, NOMBRE asc
