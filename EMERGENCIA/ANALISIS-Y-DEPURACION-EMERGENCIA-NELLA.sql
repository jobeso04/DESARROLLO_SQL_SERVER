select FECHA, ESTADO, EMERGENCIA_ID, NOMBRES, CIEX1, CIEX2, CIEX3, CIEX4, CIEX5, CIEX6, PRIORIDAD, MEDICO, MEDICO1, MEDICO2, QUIEN_ATIENDE
 from [SIGSALUD].[dbo].[EMERGENCIA] where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = 11 and YEAR(fecha) = 2017 and substring(CIEX4,1,1) between 'A' AND 'T'
 and substring(CIEX4,1,1) <> 'J'  order by CIEX4
 
 /* EEJCUTAR EN EL SERVIDOR */
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = CIEX4, ESTADO = '4', MEDICO = MEDICO1  
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = 11 and YEAR(fecha) = 2017 and substring(CIEX4,1,1) between 'A' AND 'T'
 and substring(CIEX4,1,1) <> 'J' 
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = CIEX4, ESTADO = '4', MEDICO = MEDICO1   
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX4 = 'J00'
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX4) + '.9', ESTADO = '4', MEDICO = MEDICO1   
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = 11 and YEAR(fecha) = 2017 and  LEN(CIEX4) = 3
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = CIEX4, ESTADO = '4', MEDICO = MEDICO1   
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = 11 and YEAR(fecha) = 2017 and  LEN(CIEX4) > 3
 update [SIGSALUD].[dbo].[EMERGENCIA] set ESTADO = '2' where emergencia_id = '17052398'
 update [SIGSALUD].[dbo].[EMERGENCIA] set ciex4 = 'T00.0', CIEX1 = 'T00.0', ESTADO = '4' where emergencia_id = '17048567'
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10), FECHA, 103) WHERE 
 month(fecha) = 11 and YEAR(fecha) = 2017 AND FECHA_ING IN ('__/__/__  ', NULL) AND CIEX4 <> '0'
  UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10), FECHA, 103) WHERE 
 month(fecha) = 11 and YEAR(fecha) = 2017 AND FECHA_ING IS NULL AND  CIEX4 <> '0'
 -- EJECUTAR EL PROGRAMA --
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL = CONVERT(VARCHAR(10), FECHA_ATENCION, 103),  HORA_SAL = HORA_ATEN FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NOT NULL

update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME))))
 WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NULL
 
 update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,1) in ('A',  'R10', 'R11')
 
 update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,3) in ('R10', 'R11')
 
  update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = 12 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' 
 


 
 
 /** FIN DE EJECUTAR ***/
 
 
 
 select nombres, CONDICION_EGRESO FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and CONDICION_EGRESO = ''
 
 
 select DESTINO, CONDICION_EGRESO from [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  emergencia_id = '17052487'
 
 
 select EMERGENCIA_ID, SEGURO, NOMBRES, estado, DESTINO, CONDICION_EGRESO, CIEX1, ciex4 from [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' order by CIEX1 
 
 select * from [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' order by CIEX1 
 
 -- 119
 
 select estado, DESTINO, CONDICION_EGRESO, CIEX1, ciex4 from [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,3) in ('R10', 'R11') order by CIEX1 
 
 update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,3) in ('R10', 'R11')
 
 
 
 update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' 
 
 
 select *
 from [SIGSALUD].[dbo].[V_EMERGENCIA] where  month(fecha) = 11 and YEAR(fecha) = 2017  AND CIEX1 <> '0' 
 ORDER BY EMERGENCIA_ID 

4865

select *
 from [SIGSALUD].[dbo].[EMERGENCIA] where  month(fecha) = 11 and YEAR(fecha) = 2017  AND CIEX1 <> '0'
  ORDER BY EMERGENCIA_ID 

AND EMERGENCIA_ID = '17047881'

4867
 
 
 
 
 
  
 SELECT  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, FECHA_ATENCION,
 HORA_ATEN   FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
  AND  CIEX1 <> '0'
  
 /** ES VALIDO ***/
 
 SELECT EMERGENCIA_ID,  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, 
   CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME) AS FECHA_HORA_INGRESO_UNIDA, 
   convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103) as fecha_salida_nuevo,
   convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME)))) as hora_salida_nuevo,
    FECHA_SAL, HORA_SAL, FECHA_ATENCION, HORA_ATEN   FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NULL


update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME))))
 WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NULL
  
  


select convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103)

select convert(varchar(10), getdate(), 103)



  
  
 /** FIN DE VALIDO ***/
 
 UPDATE EMERGENCIA SET HORA_ING = '21:50'  WHERE EMERGENCIA_ID = '17049061'
 
 ESTABA : 21:50
 CONVERT(TIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))
 
 
  
  
  SELECT  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, FECHA_ATENCION,
 HORA_ATEN   FROM [SIGSALUD].[dbo].[EMERGENCIA] ORDER BY FECHA_SAL DESC
 
  
 
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10), FECHA, 103) WHERE 
 month(fecha) = 11 and YEAR(fecha) = 2017 AND FECHA_ING IN ('__/__/__  ', NULL) AND CIEX4 <> '0'
  
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10), FECHA, 103) WHERE 
 month(fecha) = 11 and YEAR(fecha) = 2017 AND FECHA_ING IS NULL AND  CIEX4 <> '0'
 
 
 
 /***  EN HORA DE INGRESO ***/
 
 
 SELECT  nombres, A.FECHA, A.HORA, CONVERT(VARCHAR(10), A.FECHA, 103) AS FECH_NUEVA, FECHA_ING, HORA_ATEN, B.HORA AS HORA_ENFERMERA, HORA_ING, FECHA_SAL, HORA_SAL, FECHA_ATENCION 
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE A.EMERGENCIA_ID = '17051483'  and B.TIPO_PROCESO = 'P06'
 
 
 SELECT  A.CIEX1, A.CIEX4,  A.ESTADO, nombres, A.FECHA, A.HORA, CONVERT(VARCHAR(10), A.FECHA, 103) AS FECH_NUEVA, FECHA_ING, HORA_ATEN, B.HORA AS HORA_ENFERMERA,
 B.HORA + 10 AS HORA_CAMBIAR, HORA_ING, FECHA_SAL, HORA_SAL, FECHA_ATENCION 
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE  month(A.fecha) = 11 and YEAR(A.fecha) = 2017   and B.TIPO_PROCESO = 'P06' AND HORA_ING IS NULL AND CIEX1 <> '0' 
  ORDER BY HORA_ING 
 
 SELECT  A.FECHA_ING,  B.HORA, CONVERT(TIME, CAST(B.HORA AS DATETIME) + CAST('00:10:00' AS DATETIME)) AS HORA_INGRESO_FINAL, HORA_ING
  FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE  month(A.fecha) = 11 and YEAR(A.fecha) = 2017   and B.TIPO_PROCESO = 'P06' AND HORA_ING IS NULL AND CIEX1 <> '0' 
 ORDER BY B.HORA DESC
 
 
 SELECT A.EMERGENCIA_ID, B.HORA, A.HORA_ING
   FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE  month(A.fecha) = 11 and YEAR(A.fecha) = 2017   and B.TIPO_PROCESO = 'P06' AND HORA_ING IS NULL AND CIEX1 <> '0' 
 --1626


 SELECT A.EMERGENCIA_ID, B.HORA, A.HORA_ING
   FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE  month(A.fecha) = 11 and YEAR(A.fecha) = 2017   and B.TIPO_PROCESO = 'P06' AND A.EMERGENCIA_ID IN ('17047509', '17047554', '17047581')


 
 
 SELECT CONSULTORIO, CONSULTORIO1
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017  and CONSULTORIO1 = '0'
   update [SIGSALUD].[dbo].[EMERGENCIA] set CONSULTORIO1 = CONSULTORIO WHERE  month(fecha) = 11 and YEAR(fecha) = 2017  and CONSULTORIO1 = '0'


 
 
 
 /*****  FIN DE TRABAJO DE HORA D EINGRESO ****/
 
 
 /*** nueva ejecucion en servidor ***/
 update [SIGSALUD].[dbo].[EMERGENCIA] set PRIORIDAD = 'Prioridad 3' where month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and PRIORIDAD = '' and SUBSTRING(CIEX1,1,1) in ('A', 'J' )
 update [SIGSALUD].[dbo].[EMERGENCIA] set PRIORIDAD = 'Prioridad 2' where month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and PRIORIDAD = '' and SUBSTRING(CIEX1,1,1) not in ('A', 'J' )
 update [SIGSALUD].[dbo].[EMERGENCIA] set PRIORIDAD = 'Prioridad 2' where month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and PRIORIDAD =  '(Ninguno)' and  sUBSTRING(CIEX1,1,1) not in ('R', 'J' )
 update [SIGSALUD].[dbo].[EMERGENCIA] set PRIORIDAD = 'Prioridad 4' where month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and PRIORIDAD =  '(Ninguno)' and  sUBSTRING(CIEX1,1,1) in ('R', 'J' )
 
 update  [SIGSALUD].[dbo].[EMERGENCIA] set fecha_sal = fecha_atencion, hora_sal = hora_aten
   WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and fecha_sal is null
 
 
 
 
 /********************************* finde ejecucion*****/
 
 
 select PRIORIDAD, COUNT(PRIORIDAD) as cantidad  from [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') group by PRIORIDAD
 order by PRIORIDAD
 
 
 
 
 select fecha_salida, EMERGENCIA_ID, NOMBRES, ESTADO, FECHA_ING, HORA_ING, fecha_sal, hora_sal, CIEX1, CIEX4, PRIORIDAD from [SIGSALUD].[dbo].[EMERGENCIA]
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and PRIORIDAD =  '(Ninguno)' and  sUBSTRING(CIEX1,1,1) in ('R', 'J' )
 
 update [SIGSALUD].[dbo].[EMERGENCIA] set PRIORIDAD = 'Prioridad 4' where month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and PRIORIDAD =  '(Ninguno)' and  sUBSTRING(CIEX1,1,1) in ('R', 'J' )
 
 
 
 select fecha, EMERGENCIA_ID, NOMBRES, ESTADO, FECHA_ING, HORA_ING, FECHA_ATENCION, HORA_ATEN, fecha_sal, hora_sal, CIEX1, CIEX4, PRIORIDAD from [SIGSALUD].[dbo].[EMERGENCIA]
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and fecha_sal is null
 
 update  [SIGSALUD].[dbo].[EMERGENCIA] set fecha_sal = fecha_atencion, hora_sal = hora_aten
   WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 
 and CIEX1 not in ('', '0') and CIEX4  not in ('', '0') and fecha_sal is null
 
 
 
 
 
 /******* 13 - 12 -2017 -- tarde ---
 
 'J04','R10','N48'
 
 /* subir al servidor */
   update [SIGSALUD].[dbo].[EMERGENCIA]  set CIEX1 = UPPER(rtrim(ciex1)) + '.1'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX1 in ('J04','R10','N48') 
   update [SIGSALUD].[dbo].[EMERGENCIA]  set CIEX1 = UPPER(rtrim(ciex1)) + '.2'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX1 in ('J31','J30','S20') 
   update [SIGSALUD].[dbo].[EMERGENCIA]  set CIEX1 = UPPER(rtrim(ciex1)) + '.0'  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX1 in ('K05','K12','K80','L08','M94','S30') 
   update [SIGSALUD].[dbo].[EMERGENCIA]  set CIEX1 = UPPER(rtrim(ciex1)) + '.9'  
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX1 in ('J02','J03','J18','J20','J21','J45','J84','J96','J98','K02','K35','K42','K52','K59','L03','J04','L50','M17','M54','N18','N20','N39','O02','O03','O21','O23','O47','P36','R50','R52','S00','S01','S06','S51','S60','T00','T15','T18') 
   
   
 /* fin de subir al servidor */
 
 ***/
 
 select ciex1, UPPER(rtrim(ciex1)) + '.1' as Nuevo from [SIGSALUD].[dbo].[EMERGENCIA]
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and substring(CIEX1,1,1) in ('J','R','N') 
  
 
 select ciex1 from [SIGSALUD].[dbo].[EMERGENCIA]
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and substring(CIEX1,1,1) in ('J','R','N') 
 
 
 select emergencia_id, ciex1, UPPER(rtrim(ciex1)) + '.9' as Nuevo from [SIGSALUD].[dbo].[EMERGENCIA]
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX1 in ('J02','J03','J18','J20','J21','J45','J84','J96','J98','K02','K35','K42','K52','K59','L03','J04','L50','M17','M54','N18','N20','N39','O02','O03','O21','O23','O47','P36','R50','R52','S00','S01','S06','S51','S60','T00','T15','T18') 
  647
  
  
  select emergencia_id, ciex1 from [SIGSALUD].[dbo].[EMERGENCIA]
  WHERE  EMERGENCIA_ID = '17049271'
  
  
  update [SIGSALUD].[dbo].[EMERGENCIA]  set CIEX1 = UPPER(rtrim(ciex1)) + '.9'  
  WHERE  month(fecha) = 11 and YEAR(fecha) = 2017 and CIEX1 in ('J02','J03','J18','J20','J21','J45','J84','J96','J98','K02','K35','K42','K52','K59','L03','J04','L50','M17','M54','N18','N20','N39','O02','O03','O21','O23','O47','P36','R50','R52','S00','S01','S06','S51','S60','T00','T15','T18') 
  
  select * from [SIGSALUD].[dbo].[EMERGENCIA] 
  

 
 