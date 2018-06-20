use SIGSALUD
declare @lfecha1 datetime = convert(datetime, '2016-02-01', 101)
declare @lfecha2 datetime = convert(datetime, '2016-02-29', 101)
select  'ECOGRAFIA DE MAMA' as nom_exam, count(a.id_examen) cant_exam, '16.94' as precio_unidad,
      16.94*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('30663416884638555766') 
UNION ALL
select  'ECOGRAFIA ABDOMINAL COMPLETA' as nom_exam, count(a.id_examen) cant_exam, '16.94' as precio_unidad,
      16.94*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('12229495598858023616') 
UNION ALL
select  'ECOGRAFIA ABDOMINAL SUPERIOR' as nom_exam, count(a.id_examen) cant_exam, '15.44' as precio_unidad,
      15.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('14923582101534845179') 
UNION ALL
select  'ECOGRAFIA TRANSVAGINAL  OBSTETRICA' as nom_exam, count(a.id_examen) cant_exam, '16.53' as precio_unidad,
      16.53*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('02549878347567106356') 
UNION ALL
select  'ECOGRAFIA TRANSVAGINAL  (NO OBSTETRICA)' as nom_exam, count(a.id_examen) cant_exam, '16.53' as precio_unidad,
      16.53*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('89420810373317329576') 
UNION ALL
select  'ECOGRAFIA RENAL' as nom_exam, count(a.id_examen) cant_exam, '18.44' as precio_unidad,
      18.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('75425583011662877015') 

UNION ALL
select  'ECOGRAFIA OBSTETRICA' as nom_exam, count(a.id_examen) cant_exam, '16.94' as precio_unidad,
      16.94*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('34939469531515378150') 

UNION ALL
select  'ECOGRAFIA PERFIL BIOFISICO' as nom_exam, count(a.id_examen) cant_exam, '18.44' as precio_unidad,
      18.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('18985351306406322966') 
UNION ALL
select  'ECOGRAFIA PELVICA' as nom_exam, count(a.id_examen) cant_exam, '15.44' as precio_unidad,
      15.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('08358155307671257316') 
UNION ALL
select  'ECOGRAFIA DE PROSTATA' as nom_exam, count(a.id_examen) cant_exam, '15.44' as precio_unidad,
      15.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('41385932188315587881') 
UNION ALL
select  'ECOGRAFIA TORACICO' as nom_exam, count(a.id_examen) cant_exam, '15.44' as precio_unidad,
      15.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('51942241724412073387') 
UNION ALL
select  'ECOGRAFIA VESICAL' as nom_exam, count(a.id_examen) cant_exam, '16.94' as precio_unidad,
      16.94*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('69875900289214203519') 
UNION ALL
select  'ECOGRAFIA DE TIROIDES' as nom_exam, count(a.id_examen) cant_exam, '16.94' as precio_unidad,
      16.94*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('83965657879707926244') 
UNION ALL
select  'ECOGRAFIA DE TESTICULAR' as nom_exam, count(a.id_examen) cant_exam, '15.44' as precio_unidad,
      15.44*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('97872332854516653849') 

UNION ALL
select  'ECOGRAFIA DE PARTES BLANDAS' as nom_exam, count(a.id_examen) cant_exam, '16.94' as precio_unidad,
      16.94*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('54224232297216799612') 


/*        
select* from   examen_citas        
select *  FROM [SIGSALUD].[dbo].[ECO_EXAMEN] where NOMBRE like '%partes blandas%'
select * from   eco_atencion */