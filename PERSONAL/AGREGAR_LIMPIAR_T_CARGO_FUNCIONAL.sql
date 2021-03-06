  use BDPERSONAL
  SELECT *   FROM [BDPERSONAL].[dbo].[T_CargoFuncional] ORDER BY NOMBRE ASC
  SELECT *   FROM [BDPERSONAL].[dbo].[T_CargoFuncional] ORDER BY codigo ASC
  
  SELECT [CODIGO],[NOMBRE],[TIPO]  FROM [BDPERSONAL].[dbo].[T_Grupo]
  
  alter table  [BDPERSONAL].[dbo].[T_CargoFuncional] alter column nombre nvarchar(100)
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] SET NOMBRE = 'Abogado/a' where CODIGO = '0010'
  delete from [BDPERSONAL].[dbo].[T_CargoFuncional] where CODIGO in ('0057', '0058', '0036')
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set CODGRP = '07' where codigo in ('0062', '0063', '0064')
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set CODGRP = '06' where codigo in ('0062')
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0065', 'Administrador/a de entidad de datos', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0066', 'Administrador/a de soporte informatico', '06','')
       
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0067', 'Asistente ejecutivo I', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0068', 'Asistente ejecutivo II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0069', 'Asistente Profesional I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0070', 'Asistente Profesional II', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0071', 'Auditor/a Especialista', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0072', 'Auditor/a Principal', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0073', 'Auxiliar/a Administrativo', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0074', 'Auxiliar Asistencial', '05','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0075', 'Biologo Especialista', '04','')

  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'contador I' where codigo in ('0018')     
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0076', 'Contador/a II', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'digitador/a' where codigo in ('0005')        
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'DIRECTOR/a ADJUNTO' where codigo in ('0063')            
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'DIRECTOR/a ADMNISTRATIVO(a)' where codigo in ('0002')            
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'DIRECTOR/a hospital(a)' where codigo in ('0002')            
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0077', 'DIRECTOR/a hospital I', '07','')
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'DIRECTOR/a DE HOSPITAL II' where codigo in ('0064')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0078', 'DIRECTOR/a general', '07','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'enfermera/o' where codigo in ('0019')     
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0079', 'enfermera/o en salud publica', '02','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0080', 'enfermera/o especialista', '02','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0081', 'especialista administrativo I', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0082', 'especialista administrativo II', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'especialista en comunicacion social I' where codigo in ('0055')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0083', 'especialista en comunicacion social II', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0084', 'especialista en desarrollo de recursos humanos I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0085', 'especialista en desarrollo de recursos humanos II', '06','')
     
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'especialista en desarrollo de informatico I' where codigo in ('0006')      
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'especialista en desarrollo de informatico II' where codigo in ('0062') 

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0086', 'especialista en epidemiologia hospitalaria', '01','')
     
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0087', 'especialista en epidemiologia I', '01','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0088', 'especialista en epidemiologia II', '01','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0089', 'especialista en equipamiento hospitalario', '01','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0090', 'especialista en estadistica I', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0091', 'especialista en estadistica II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0092', 'especialista en estadistica III', '06','')

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0057', 'especialista en gestion de calidad de productos farmaceuticos y afines I' , '06','')

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0093', 'especialista en gestion de calidad de productos farmaceuticos y afines II', '04','')

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0094', 'especialista en gestion de salud I', '04','')

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0095', 'especialista en gestion de salud II', '04','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0096', 'especialista en logistica', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0097', 'especialista en mantenimiento', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0098', 'especialista en organizacion I', '06','')

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0099', 'especialista en organizacion II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0100', 'especialista en organizacion III', '06','')

  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0101', 'especialista en orientacion de salud', '04','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0102', 'especialista en planeamiento I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0103', 'especialista en planeamiento II', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0104', 'especialista en planeamiento III', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0105', 'especialista en presupuesto I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0106', 'especialista en presupuesto II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0107', 'especialista en presupuesto III', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0107', 'especialista en riesgos y desastres', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0108', 'especialista en promocion de la salud II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0109', 'especialista en salud ambiental I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0110', 'especialista en salud publica', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0111', 'especialista en telecomunicaciones I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0112', 'especialista en telecomunicaciones II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0113', 'experto/a en gestion en salud', '06','')
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'JEFE/A DE OFICINA' where codigo in ('0034')
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'JEFE/A DE UNIDAD' where codigo in ('0035')  
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0114', 'ingeniero sanitario', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0115', 'medico especialista', '01','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0116', 'medico sub especialista', '01','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0117', 'odontologo especialista', '01','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0118', 'periodista', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0119', 'promotor/a social', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'psicologo/a' where codigo in ('0050')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0120', 'psicologo/a especialista', '04','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0121', 'relacionista publico', '04','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0122', 'supervisor/a administrador/a', '04','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0123', 'supervisor/a de enfermeria', '04','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0124', 'supervisor/a I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0125', 'supervisor/a II', '06','')
   
   
   UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico administrativo I' where codigo in ('0061')
   
   
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0126', 'Tecnico administrativo II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0127', 'Tecnico administrativo III', '06','')
  
   UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a contable' where codigo in ('0031')
   
   UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a dental' where codigo in ('0033')
   
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0128', 'Tecnico/a en comunicaciones', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a en enfermeria I' where codigo in ('0008')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0129', 'Tecnico/a en enfermeria II', '06','')
   
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0130', 'Tecnico/a en estadistica', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a en farmacia I' where codigo in ('0032')     
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0131', 'Tecnico/a en farmacia II', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0132', 'Tecnico/a en finanzas', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a en informatica' where codigo in ('00072')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0133', 'Tecnico/a en ingenieria I', '06','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0134', 'Tecnico/a en ingenieria II', '06','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0135', 'Tecnico/a en laboratorio ambiental I', '05','')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0136', 'Tecnico/a en laboratorio ambiental II', '05','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a en laboratorio I' where codigo in ('0009')
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0137', 'Tecnico/a en laboratorio I', '05','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0138', 'Tecnico/a en logistica', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico/a en mantenimiento' where codigo in ('0012')  
  
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0139', 'Tecnico/a en Nutrición I', '04','')
     
  INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0140', 'Tecnico/a en Nutrición II', '04','')
     
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0141', 'Tecnico/a en Organización', '04','')
  
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0142', 'Tecnico/a en Planificación', '04','')
     
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0143', 'Tecnico/a en Presupuesto', '04','')
  
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0144', 'Tecnico/a en Protesis Dental', '04','')
     
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0145', 'Tecnico/a en Radiologia', '04','')
     
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0146', 'Tecnico/a en Rehabilitación', '04','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'Tecnico en Servicios Generales I' where codigo in ('0054')
  
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0147', 'Tecnico en Servicios Generales II', '06','')
     
 INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0148', 'Tecnico/a en Telecomunicaciones I', '06','')
  
INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0149', 'Tecnico/a especializado', '06','')
     
INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0150', 'Tecnico/a sanitario Ambiental I', '06','')
 
INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0151', 'Tecnico/a sanitario Ambiental II', '06','')
     
  UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'tesorero/a' where codigo in ('0029')     

INSERT INTO [BDPERSONAL].[dbo].[T_CargoFuncional]([CODIGO],[NOMBRE],[CODGRP],[SEMPROFESION])
     VALUES ('0152', 'TRABAJADOR/A DE SERVICIOS GENERALES', '06','')

UPDATE [BDPERSONAL].[dbo].[T_CargoFuncional] set nombre = 'trabajador/a social' where codigo in ('0017')
     
  update [BDPERSONAL].[dbo].[T_CargoFuncional] SET NOMBRE = UPPER(nombre)