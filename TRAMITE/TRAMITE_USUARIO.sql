  select * from USUARIO where nombre like '%ROXANA GRANIZO%'order by NOMBRE asc
  select * from EXPEDIENTE where EXPEDIENTE = '15TD0428800'
  select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0428800'
  
     SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
      Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
        Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='15DE0096100'
                and left(expediente, 9)='" & rsTmp2(0) & "'"
          and substr(expediente,1,9)='" & rsTmp2(0) & "'" ORDER BY N_Expediente_Id asc
          
          
          
          SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
      Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
        Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='15DE0096200' and
                and left(expediente, 9)='" & rsTmp2(0) & "'"
                
                
                select Left(expediente, 9) from v_expediente_det
        
        
                
Select MAX(substring(Expediente,5,8)) as Max From Expediente Where Left(Expediente,9)='" & Left(sExpediente, 9)                

  SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
      Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
        Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='15DE0096100'
        
        
        
SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
      Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
        Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='15DE0096200'        
        
        

select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0431000'
select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0431800'


select * from expediente where EXPEDIENTE = '15TD0431000'
select * from expediente where EXPEDIENTE = '15TD0431800'


select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0438500'

select * from EXPEDIENTE_DETALLE 



sSql = "select Left(expediente, 9) from v_expediente_det "
ElseIf gv_TipoConexion = "ORACLE" Then
    sSql = "select substr(expediente,1,9) from v_expediente_det "
End If
sSql = sSql + "WHERE Cargo_Id='" + sCargo + "' "
sSql = sSql + "ORDER BY N_Expediente_Id asc"


SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
      Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
        Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Fecha >= CONVERT(datetime, '2015-07-10 00:00:00',120)
        
        
        /*  Cargo_Id='15DE0096100' */


        

select * from EXPEDIENTE_DETALLE where Fecha >= CONVERT(datetime, '2015-07-10 00:00:00',120) and cargo_id is null        
select * from v_expediente_det WHERE Cargo_Id='15DE0096100'  ORDER BY N_Expediente_Id asc

select Left(Cargo_Id,2) as n   from v_expediente_det WHERE Cargo_Id='15DE0096100'

select * from EXPEDIENTE_DETALLE where Fecha = CONVERT(datetime, '2015-07-10 00:00:00',120) and cargo_id is null        
select * from EXPEDIENTE_DETALLE where cargo_id = '15DE0096200'





select * from expediente_detalle where Fecha = CONVERT(datetime, '2015-07-10 00:00:00',120) order by expediente asc

  select * from EXPEDIENTE where EXPEDIENTE = '15TD0428800'
  select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0428800'
  
  
  select * from EXPEDIENTE where EXPEDIENTE = '15TD0428800'
  select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0428800'
  
  
  
  select * from EXPEDIENTE where EXPEDIENTE in (SELECT Expediente FROM v_Expediente_det WHERE Cargo_Id='15DE0096100')
        
        
  select * from EXPEDIENTE_DETALLE where EXPEDIENTE in (SELECT Expediente FROM v_Expediente_det WHERE Cargo_Id='15DE0096100') 
  
  
  SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
      Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
        Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='15DE0096100'
        
        
        update EXPEDIENTE_DETALLE set Cargo_Id = '15DE0094100' where EXPEDIENTE = '15TD0428800'
        

       select * from expediente where cargo_id = '15DE0096100'
        select * from expediente_detalle where cargo_id = '15DE0096100'
        
        select * from expediente where Fecha = CONVERT(datetime, '2015-07-10 00:00:00',120) order by fecha asc
        
        select * from v_Expediente_det where Fecha = CONVERT(datetime, '2015-07-10 00:00:00',120) order by fecha asc
        
        
        SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
         Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
          Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='" + sCargo + "' "
          and left(expediente, 9)='" & rsTmp2(0) & "'"
          
          
         select Left(expediente, 9) from v_expediente_det 
         
         
select Left(expediente, 9) as expe from v_expediente_det WHERE Cargo_Id='15DE0096100' ORDER BY N_Expediente_Id asc


SELECT Expediente,Fecha,Nombre,Actor_1_Descripcion,Actor_2_Descripcion,
         Asunto,Nro_Documento,Actor_AbreviaturaDe,Numero,Cargo_Id, Traslado,N_Expediente_Id,Observaciones,
          Accion1,Accion2,Accion3,Prioridad, Descripcion FROM v_Expediente_det WHERE Cargo_Id='15DE0096100' and left(expediente, 9) in (select Left(expediente, 9) as expediente from v_expediente_det WHERE Cargo_Id='15DE0096100')
          
          
          select * from EXPEDIENTE where EXPEDIENTE = '15TD0431000'
          select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0431000'
          
          select * from EXPEDIENTE where EXPEDIENTE = '15TD0431800'
          select * from EXPEDIENTE_DETALLE where EXPEDIENTE = '15TD0431800'
          
          select * from EXPEDIENTE where EXPEDIENTE = '15TD0431000'
          
          select * from EXPEDIENTE where EXPEDIENTE = '15TD0431800'
          
           select * from v_EXPEDIENTE_det where EXPEDIENTE = '15TD0431000'
          
          select * from EXPEDIENTE where EXPEDIENTE = '15TD0431800'
          
          
          select * from v_EXPEDIENTE_det where EXPEDIENTE = '15TD0431000'
          select * from v_EXPEDIENTE_det where EXPEDIENTE = '15TD0431800'