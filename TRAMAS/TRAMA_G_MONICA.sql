 USE SIGSALUD
 declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
 declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)

SELECT CODIGOESPE12 as servicio, PROCEDIM1 as procedimiento FROM HOSPITALIZACION WHERE 
 FECHA1 BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) and PROCEDIM1 <> '0' 
 
 
 select * from CONSULTORIO where TIPO = 'H'
 
 select CONSULTORIO, NOMBRE, CODUPSSEEM, UPSTRAMA from CONSULTORIO where TIPO = 'H' and CONSULTORIO <> '0' and len(consultorio) = 4 
   order by NOMBRE asc
 
 update CONSULTORIO set upstrama = '241900' where CONSULTORIO in ('1092', '1090', '1091')
 update CONSULTORIO set upstrama = '240100' where CONSULTORIO = '2090'
 update CONSULTORIO set upstrama = '241900' where CONSULTORIO = '1093'
 update CONSULTORIO set upstrama = '241500' where CONSULTORIO = '4090'
 update CONSULTORIO set upstrama = '243200' where CONSULTORIO = '3080'
 update CONSULTORIO set upstrama = '241600' where CONSULTORIO = '4091'
 update CONSULTORIO set upstrama = '240600' where CONSULTORIO = '2092'
 update CONSULTORIO set upstrama = '242500' where CONSULTORIO = '3090'
 update CONSULTORIO set upstrama = '241200' where CONSULTORIO = '2091'
 update CONSULTORIO set upstrama = '250100' where CONSULTORIO = '1097'
 update CONSULTORIO set upstrama = '241300' where CONSULTORIO = '2093'
  
 
 
 
 
 
 select CONSULTORIO, NOMBRE, CODUPSSEEM, UPSTRAMA from CONSULTORIO where TIPO = 'C' and CONSULTORIO <> '0' and len(consultorio) = 4 
   order by NOMBRE asc
  
  
  
  
 
 
 /***/
 
 select * from CONSULTORIO where CONSULTORIO = '2027'
 
 update CONSULTORIO set codupsseem = '' where CONSULTORIO = '2027'
 
 
 update CONSULTORIO where TIPO = 'C' and CONSULTORIO <> '0' order by NOMBRE asc
 
 
 
 
 order by PROCEDIM1 desc
 
 




SELECT CODIGOESPE12 as servicio, PROCEDIM1, PROCEDIM2 FROM HOSPITALIZACION WHERE FECHA1 BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101)










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
SELECT B.CONSULTORIO AS SERVICIO,  A.DX AS PROCEDIMIENTO FROM ATENCIOND A LEFT JOIN ATENCIONC B ON A.ID_CITA = B.ID_CITA
  WHERE B.FECHA BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101) AND 
   TIPODX = 'D' AND SUBSTRING(DX,1,1) IN ('9', '8', '7', '6', '5', '4', '3', '2', '1')  AND DX NOT IN ('99999') 



   
   
  
  
  
  
  
  SELECT *  FROM CONSULTORIO WHERE TIPO = 'C' AND CODUPSSEEM = '223500'
  
  SELECT *  FROM CONSULTORIO WHERE  CODUPSSEEM = '223500'
  
  
  
  
  








 
SELECT DX AS PROCEDIMIENTO FROM ATENCIOND WHERE ID_CITA IN (SELECT ID_CITA FROM ATENCIONC WHERE FECHA BETWEEN CONVERT(DATETIME,  @lcfecha1, 101) AND CONVERT(DATETIME,  @lcfecha2, 101))
AND TIPODX = 'D' AND SUBSTRING(DX,1,1) IN ('9', '8', '7', '6', '5', '4', '3', '2', '1')  AND DX NOT IN ('99999') ORDER BY DX DESC



 
 
 
   
/*************************

 
 alter table consultorio add upstrama varchar(10)
 /****/
  alter table consultorio add upstrama varchar(10)
  update CONSULTORIO set upstrama = '222500' where CONSULTORIO = '1014'
  update CONSULTORIO set upstrama = '220100' where CONSULTORIO = '2021'
  update CONSULTORIO set upstrama = '220500' where CONSULTORIO = '2026'
  update CONSULTORIO set upstrama = '220600' where CONSULTORIO = '2028'
  update CONSULTORIO set upstrama = '221600' where CONSULTORIO IN ('4047', '4093', '4092', '5030', '5040', '5020')
   update CONSULTORIO set upstrama = '221601' where CONSULTORIO IN ('4046', '9095')
   update CONSULTORIO set upstrama = '222600' where CONSULTORIO IN ('1017')
  update CONSULTORIO set upstrama = '222700' where CONSULTORIO IN ('1020')   
    update CONSULTORIO set upstrama = '229000' where CONSULTORIO IN ('2027')   
    update CONSULTORIO set upstrama = '260000' where CONSULTORIO IN ('6082')       
    update CONSULTORIO set upstrama = '260000' where CONSULTORIO IN ('6086')       
    update CONSULTORIO set upstrama = '222800' where CONSULTORIO IN ('1016', '1021')           
    update CONSULTORIO set upstrama = '221502' where CONSULTORIO IN ('4041', '4043')           
    update CONSULTORIO set upstrama = '223200' where CONSULTORIO IN ('1095', '1030') 
    update CONSULTORIO set upstrama = '260300' where CONSULTORIO IN ('6083', '6089', '1023')     
    update CONSULTORIO set upstrama = '223400' where CONSULTORIO IN ('1027', '1034')         
    update CONSULTORIO set upstrama = '223500' where CONSULTORIO IN ('1011', '1012', '1022') 
    update CONSULTORIO set upstrama = '190200' where CONSULTORIO IN ('4045')         
    update CONSULTORIO set upstrama = '223800' where CONSULTORIO IN ('1013', '1024')     
    update CONSULTORIO set upstrama = '220900' where CONSULTORIO IN ('2030')         
    update CONSULTORIO set upstrama = '223900' where CONSULTORIO IN ('1015', '1098')             
    update CONSULTORIO set upstrama = '260202' where CONSULTORIO IN ('5070', '5071')
     update CONSULTORIO set upstrama = '221601' where CONSULTORIO IN ('4042')    
    update CONSULTORIO set upstrama = '221900' where CONSULTORIO IN ('5050', '5010', '5011', '5012')       
     update CONSULTORIO set upstrama = '260500' where CONSULTORIO IN ('6087')    
    update CONSULTORIO set upstrama = '224100' where CONSULTORIO IN ('5080', '5090', '5060', '5061')
    update CONSULTORIO set upstrama = '221602' where CONSULTORIO IN ('4044')    
    update CONSULTORIO set upstrama = '224200' where CONSULTORIO IN ('1019')    
    update CONSULTORIO set upstrama = '130300' where CONSULTORIO IN ('1028', '1031', '1032', '1029')    
  
      update CONSULTORIO set upstrama = '221400' where CONSULTORIO IN ('2025', '2094')    
   
    
      update CONSULTORIO set upstrama = '221300' where CONSULTORIO IN ('2022', '2029')    
    
    update CONSULTORIO set upstrama = '221000' where CONSULTORIO IN ('2024') 
    
    update CONSULTORIO set upstrama = '221200' where CONSULTORIO IN ('2023') 
    update CONSULTORIO set upstrama = '224700' where CONSULTORIO IN ('3031', '3032', '3033', '2023') 
    
    update CONSULTORIO set upstrama = '261001' where CONSULTORIO IN ('6081') 
    
    update CONSULTORIO set upstrama = '260502' where CONSULTORIO IN ('6088') 
    
    update CONSULTORIO set upstrama = '260800' where CONSULTORIO IN ('6084') 
    update CONSULTORIO set upstrama = '228000' where CONSULTORIO IN ('1033') 
    update CONSULTORIO set upstrama = '260900' where CONSULTORIO IN ('6085') 
    
     update CONSULTORIO set upstrama = '260904' where CONSULTORIO IN ('5081') 
     
     update CONSULTORIO set upstrama = '260700' where CONSULTORIO IN ('6090') 
     
     
     SELECT * FROM CONSULTORIO WHERE NOMBRE LIKE 'UCI%'
     
     
    
    
    
  
   
   
  
  
  
  

********/



