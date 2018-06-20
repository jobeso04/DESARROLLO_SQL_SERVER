USE SIGSALUD
DECLARE @lfecha1 datetime = convert(datetime, '2015-12-01', 101) 
DECLARE @lfecha2 datetime = convert(datetime, '2015-12-31', 101) 
select NOMBRE, sum(CANTIDAD) as cantidad from v_pagod 
    where NOMBRE like 'eco%' and PAGOID in (SELECT PAGOID  FROM PAGOC WHERE FECHA between @lfecha1 and @lfecha2 and ESTADO = '2')
    group by NOMBRE, cantidad
UNION ALL    
SELECT '---- SIS--------' AS NOMBRE, 0000 AS CANTIDAD
UNION ALL 
select  'ECOGRAFIA DE MAMA' as NOMBRE, count(a.id_examen) CANTIDAD from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('30663416884638555766') 


