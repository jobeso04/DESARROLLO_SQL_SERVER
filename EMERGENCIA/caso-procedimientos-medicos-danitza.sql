/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [CodigoCPT]
      ,[nombre]
  FROM [SIGSALUD].[dbo].[CPT] where CodigoCPT = '29105'
  
  use sigsalud
  select * from dbo.CIEXHIS where CODIGO = '29105'
  
  use sigsalud
  select * from dbo.CIEX where ciex = '29105'
  use sigsalud
  update CPT set nombre = 'APLICACIÓN DE FÉRULA LARGA PARA EL BRAZO O PIERNA' where  CodigoCPT = '29105'
  

use sigsalud  
  select PROCE_MED_1, PROCE_MED_2, PROCE_MED_3 from emergencia where EMERGENCIA_ID = '17032097'
  
  use sigsalud  
  update emergencia set PROCE_MED_1 = '0' where EMERGENCIA_ID = '17032097'
  
  use SIGSALUD
  select EMERGENCIA_ID, PROCE_MED_1, PROCE_MED_2, PROCE_MED_3 from EMERGENCIA where EMERGENCIA_ID = '16038995'
  
  /*** ejecutar en el servidor */
  update EMERGENCIA set PROCE_MED_1 = '29075' where EMERGENCIA_ID = '16038995'
  
  
  
  select * from CUENTA where CUENTAID = '1752850'
  
  select * from PACIENTE WHERE NOMBRE LIKE 'SANCHJEZ POR%'
  
  SELECT * FROM PACIENTE WHERE HISTORIA = '0090060'
  
  
  select * from CUENTA 
  
  update CUENTA  set HORA_APERTURA = '12:44:00' where CUENTAID = '1752850'
  
  
  select * from USUARIO where USUARIO = 'lcalixtro'
  
  
  select * from USUARIO where USUARIO = 'LCALIXTRO' and modulo = 'ADMISION'
  select * INTO NILTON from USUARIOd where USUARIO = 'LCALIXTRO' and modulo = 'ADMISION'
  
  select * from USUARIOd where USUARIO = 'NFERNANDEZ' and modulo = 'ADMISION'
  
  
  DELETE FROM USUARIOd where USUARIO = 'NFERNANDEZ' and modulo = 'ADMISION'
  select * INTO NILTON from USUARIOd where USUARIO = 'LCALIXTRO' and modulo = 'ADMISION'
  UPDATE NILTON SET USUARIO = 'NFERNANDEZ'
  INSERT INTO USUARIOd 
  SELECT * FROM NILTON 
  
  select * from USUARIOd where USUARIO = 'NFERNANDEZ' and modulo = 'ADMISION'
  
  /* LOS REGISTRO DE HSPOITALIZACION LO GRABA EN hospitalizaci  -- v_hospitaliza */
  
  SELECT ESTADO,idHOSPITALIZACION,PACIENTE, Historia,CONSULNOMBRE,FECHA1,HORA1,ORIGENOMBRE,SEGURONOMBRE,MEDICONOMBRE 
   FROM V_HOSPITALIZA  WHERE Paciente='2008089638' order by idHospitalizacion DESC
  
  SELECT *
   FROM HOSPITALIZA  WHERE Paciente='2008089638' order by idHospitalizacion DESC
   
   update HOSPITALIZA  set hora1 = '12:44:00' WHERE Paciente='2008089638'
  
  
  
  
  
  
  
  
  
  
  
  
  