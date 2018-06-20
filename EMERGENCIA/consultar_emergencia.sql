
select ESTADO, emergencia_id, convert(char, fecha, 103) as fecha_registro, HORA,  nombres from EMERGENCIA 
 where nombres LIKE '%' + 'chumbimuni chumbi' + '%' order by fecha DESC   
 
select * from EMERGENCIA 

       select t1.EMERGENCIA_ID, t1.ESTADO, t1.FECHA, t1.HORA, t1.HISTORIA, t1.NOMBRES, t1.SEXO, RTRIM(t3.nombre) as segu, t4.NOMBRE as consul
               from V_EMERGENCIA t1 LEFT JOIN SEGURO T3 ON T3.SEGURO = T1.SEGURO   LEFT JOIN CONSULTORIO T4 ON T4.CONSULTORIO = T1.CONSULTORIO 
                     where t1.nombres LIKE '%' + 'chumbimuni' + '%' order by fecha DESC     
