use sigsalud	
 select Estado,Nro_Atencion as Nro_FUA ,Fecha_Atencion,Hora_Aten,Nombres,Documento,Afiliacion,Sexo,Cie_1,Dx_1,Tdx1,Cie_2,Dx_2,Tdx2,Cie_3,Dx_3,Tdx3,Entidad,origen,consultorio,Destino,Medico,Especialidad_Medico,Observa,usuario,Tipo_Prestacion
  from v_ATENCION_SEGURO WHERE Fecha_Atencion between convert(datetime, '2015-01-01', 101) and convert(datetime, '2015-12-31', 101)  and ESTADO = '2'
  order by Atencion_Seguro_Id asc
  
