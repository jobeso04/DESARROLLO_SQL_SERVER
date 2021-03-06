/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [idkey]
      ,[hospitalizacion_id]
      ,[renipress]
      ,[e_ubig]
      ,[e_cdpto]
      ,[e_cprov]
      ,[e_cdist]
      ,[cod_disa]
      ,[cod_red]
      ,[cod_mred]
      ,[numhc]
      ,[nomb]
      ,[apell]
      ,[doc_iden]
      ,[etnia]
      ,[sexo]
      ,[edad]
      ,[tipoedad]
      ,[ubigeo]
      ,[cdpto]
      ,[cprov]
      ,[cdist]
      ,[fecing]
      ,[fecegr]
      ,[totalest]
      ,[ups]
      ,[condicion]
      ,[financia]
      ,[coddiag1]
      ,[coddiag2]
      ,[coddiag3]
      ,[coddiag4]
      ,[cemorb1]
      ,[cemorb2]
      ,[codcpt1]
      ,[codcpt2]
      ,[codcpt3]
      ,[codcpt4]
      ,[estadio]
      ,[valor_t]
      ,[valor_n]
      ,[valor_m]
      ,[tratamien]
      ,[prof_parto]
      ,[fecparto]
      ,[rnvivo]
      ,[rnmuerto]
      ,[codpsal]
      ,[fechareg]
      ,[estado]
  FROM [SIGSALUD].[dbo].[SEMEGRESO]
  
  USE SIGSALUD
  select  '1' + rtrim(DNI) + case abreviatura when 'MED' THEN '01' WHEN 'OBS' THEN '05' WHEN 'ENF' THEN '06' ELSE '0' END AS CODPSAL from medico where medico = 'RMJ'
  
  USE SIGSALUD
  TRUNCATE TABLE [SIGSALUD].[dbo].[SEMMEDICOS]
  INSERT INTO [SIGSALUD].[dbo].[SEMMEDICOS]([CODPSAL],[NOMBRE],[PLAZA],[COD_2000],[COD_PROF],[COD_COND],[FECHA_ING],[FECHA_BAJA])
  select DISTINCT '1' + DNI + case abreviatura when 'MED' THEN '01' WHEN 'OBS' THEN '05' WHEN 'ENF' THEN '06' ELSE '0' END AS CODPSAL, NOMBRE, '' PLAZA, '0000005947' AS COD_2000,
    case abreviatura when 'MED' THEN '01' WHEN 'OBS' THEN '05' WHEN 'ENF' THEN '06' ELSE '0' END AS COD_PROF, '' AS COD_COND, '02/01/10' AS FECHA_ING, '' AS FECHA_BAJA  from medico 
    WHERE ABREVIATURA IN ('MED', 'OBS', 'ENF') AND NOMBRE NOT LIKE '%NINGUNO%'  ORDER BY NOMBRE ASC
  SELECT* FROM [SIGSALUD].[dbo].[SEMMEDICOS]  
  
  USE BDPERSONAL
  SELECT CONVERT(INT, PLAZA) PLAZA,  CASE SITUACION WHEN '01' THEN '01' WHEN '06' THEN '02'  WHEN '20' THEN '02'  WHEN '03' THEN '03'  WHEN '11' THEN '04' END AS COD_COND
          FROM MAESTRO WHERE NOMBRE LIKE 'BULLON HUAYANAY YONE%'
  
  
  
  CODIGO	NOMBRE	ESTADO
00	<< No Consigna >>	0
01	NOMBRADO DE PLANTA	1
02	DESTACADO A OTRA INSTITUCION	0
03	DESTACADO DE OTRA INSTITUCION	1
04	DESIGNADO	0
06	CAS	1
07	CESANTE	0
08	FALLECIDO	0
10	PLAZA VACANTE	0
11	BAJA EN LA INSTITUCION	0
20	TERCEROS	1


  
  
  
  USE SIGSALUD
  /* UPDATE MEDICO SET NOMBRE = UPPER(NOMBRE)  */
  SELECT NOMBRE, DNI FROM MEDICO WHERE ABREVIATURA IN ('MED', 'OBS', 'ENF') AND NOMBRE NOT LIKE '%NINGUNO%'   ORDER BY NOMBRE ASC

  
  USE BDPERSONAL
  SELECT NOMBRE, DNI FROM MAESTRO WHERE NOMBRE LIKE 'ABAD%'
  
  
  
  
  
  USE BDPERSONAL
  SELECT PLAZA, SITUACION, * FROM MAESTRO WHERE DNI = '10296594'
  
  SELECT PLAZA, SITUACION, * FROM MAESTRO
  
  SELECT * FROM V_MAESTRO WHERE NOMBRE LIKE '%ABAD BARREDO PEDRO%'
  
  
  
  SELECT * FROM MEDICO