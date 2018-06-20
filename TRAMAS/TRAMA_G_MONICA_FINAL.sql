 USE SIGSALUD
 declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
 declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
 declare @lc_trama  table (periodo varchar(10) , ipress varchar(20), codigo varchar(10), total int, servicio varchar(50))
 
insert into @lc_trama (servicio, codigo)

 SELECT B.UPSTRAMA as servicio, PROCEDIM1 as procedimiento FROM HOSPITALIZACION A LEFT JOIN CONSULTORIO B ON A.CODIGOESPE12 = B.CONSULTORIO WHERE 
 FECHA1 BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) and A.PROCEDIM1 <> '0' 

UNION ALL

 SELECT B.UPSTRAMA as servicio, PROCEDIM2 as procedimiento FROM HOSPITALIZACION A LEFT JOIN CONSULTORIO B ON A.CODIGOESPE12 = B.CONSULTORIO WHERE 
 FECHA1 BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) and A.PROCEDIM2 <> '0' 
 
UNION ALL
 

SELECT b.CODUPSSEEM as SERVICIO, PROCE_MED_1 AS PROCEDIMIENTO  FROM EMERGENCIA A left join CONSULTORIO b on b.CONSULTORIO = a.CONSULTORIO
  WHERE FECHA BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) AND ESTADO IN ('3', '4', '5') 
   AND SUBSTRING(proce_med_1,1,1) IN ('9', '8', '7', '6', '5', '4', '3', '2', '1')   
union all
SELECT b.CODUPSSEEM as SERVICIO, PROCE_MED_2 AS PROCEDIMIENTO  FROM EMERGENCIA A left join CONSULTORIO b on b.CONSULTORIO = a.CONSULTORIO
  WHERE FECHA BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) AND ESTADO IN ('3', '4', '5') 
   AND SUBSTRING(proce_med_2,1,1) IN ('9', '8', '7', '6', '5', '4', '3', '2', '1')   
union all
SELECT b.CODUPSSEEM as SERVICIO, PROCE_MED_3 AS PROCEDIMIENTO  FROM EMERGENCIA A left join CONSULTORIO b on b.CONSULTORIO = a.CONSULTORIO
  WHERE FECHA BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) AND ESTADO IN ('3', '4', '5') 
   AND SUBSTRING(proce_med_3,1,1) IN ('9', '8', '7', '6', '5', '4', '3', '2', '1')   

UNION ALL

SELECT C.UPSTRAMA AS SERVICIO,  A.DX AS PROCEDIMIENTO FROM ATENCIOND A LEFT JOIN ATENCIONC B ON A.ID_CITA = B.ID_CITA
LEFT JOIN CONSULTORIO C ON C.CONSULTORIO = B.CONSULTORIO
  WHERE B.FECHA BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) AND 
   TIPODX = 'D' AND SUBSTRING(DX,1,1) IN ('9', '8', '7', '6', '5', '4', '3', '2', '1')  AND DX NOT IN ('99999') 

/*
 select * from  @lc_trama 
 */
 

  select '201705' as periodo, '00005947' as ipress, codigo, count(codigo) as  total, servicio from  @lc_trama 
  group by codigo, servicio
   
  
  /*
  
  select * from CONSULTORIO where upstrama = '130300'*/