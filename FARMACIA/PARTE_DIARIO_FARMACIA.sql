
use sigsalud
select k.item,i.nombre,MAX(k.PRECIO) AS Precio,
 sum((case when k.Tipo_Transaccion='VC' then k.Cantidad else 0 end)) as Salidas_Contado,
  sum((case when k.Tipo_Transaccion='VEX' then k.Cantidad else 0 end)) as Salidas_Exonerado,
   sum((case when k.Tipo_Transaccion='VRP' then k.Cantidad else 0 end)) as Salidas_Credito_Paciente,
    sum((case when k.Tipo_Transaccion='VRS' then k.Cantidad else 0 end)) as Salidas_SIS,
     sum((case when k.Tipo_Transaccion='VRI' then k.Cantidad else 0 end)) as Salidas_SISALUD,
      sum((case when k.Tipo_Transaccion='VRO' then k.Cantidad else 0 end)) as Salidas_SOAT,
       sum((case when k.Tipo_Transaccion='VRD' then k.Cantidad else 0 end)) as Salidas_ConsPeru,
        sum((case when k.Tipo_Transaccion='VOI' then k.Cantidad else 0 end)) as Salidas_Sanitaria,
         sum((case when k.Tipo_Transaccion='VTB' then k.Cantidad else 0 end)) as Salidas_BTB,
          sum((case when k.Tipo_Transaccion='VOP' then k.Cantidad else 0 end)) as Salidas_Prg,
           sum((case when k.Tipo_Transaccion='VOD' then k.Cantidad else 0 end)) as Salidas_Dona,
            sum((case when k.Tipo_Transaccion='ITR' then k.Cantidad else 0 end)) as Ingreso_Transfiere,
             sum((case when k.Tipo_Transaccion='IDE' then k.Cantidad else 0 end)) as Ingreso_Devolucion,
              sum((case when k.Tipo_Transaccion='IAN' then k.Cantidad else 0 end)) as Ingreso_Anula,
               sum((case when LEFT(k.Tipo_Transaccion,1)='V' and t.tipo_pago='O' then k.Cantidad else 0 end)) as Salidas_Otros,
                sum((case when LEFT(k.Tipo_Transaccion,1)='I' and k.Tipo_Transaccion<>'IIN' then k.Cantidad else 0 end)) as Ingresos,
                 sum((case when LEFT(k.Tipo_Transaccion,1)='V' then K.Cantidad else 0 end)) as Boletas,
                  sum((case when k.Tipo_Transaccion='SCJ' OR k.Tipo_Transaccion='SPR' OR k.Tipo_Transaccion='SVN' then k.Cantidad else 0 end)) as Otros,
                   (select k1.Saldo from kardex k1 where k1.operacion=(select max(k2.Operacion) from Kardex k2 Where
                                       k2.Operacion Between '17418815' and '17420332' 
                                       
                    and k2.almacen='F' and k2.Item=k1.item) and k.Item=k1.item) as Saldo,I.Clase,C.Nombre as Nombre_Clase
                       from v_kardex k left outer join tipo_transaccion t on t.tipo_transaccion=k.Tipo_Transaccion
                        left outer join item i on i.item=k.Item left outer join clase c on c.clase=i.clase
                         where k.Operacion between '17418815' and '17420332'  and k.almacen='F' 
                          group by k.item,i.nombre,i.clase,c.nombre 