use SIGSALUD
declare @lfecha1 datetime = convert(datetime, '2016-02-01', 101)
declare @lfecha2 datetime = convert(datetime, '2016-02-29', 101)


select  upper('Obstetricas') as nom_exam, '0.19' as gel, '0.6' as papel, count(a.id_examen) cant_exam,
      0.79*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('34939469531515378150','18985351306406322966') 





select  upper('Obstetricas') as nom_exam, '0.19' as gel, '0.6' as papel, count(a.id_examen) cant_exam,
      0.79*count(a.id_examen) as costo from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion  
        and  b.fecha_cita between @lfecha1 and @lfecha2 and  b.estado = '1' and  b.rango_edad = c.id_rango  
        and  b.tipo_pac = '2' and  a.id_examen in ('34939469531515378150','18985351306406322966') 
        
union all 
select  upper('renales') as nom_exam, '0.25' as gel, '0.6' as papel, count(a.id_examen) cant_exam, 0.85*count(a.id_examen) as costo 
    from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion   and  b.fecha_cita between @lfecha1 and @lfecha2
       and  b.estado = '1' and  b.rango_edad = c.id_rango   and  b.tipo_pac = '2'  and  a.id_examen in ('88659663018814071014','75425583011662877015') 

union all        

select  upper('otros') as nom_exam, '0.13' as gel, '0.6' as papel, count(a.id_examen) cant_exam, 0.73*count(a.id_examen) as costo 
        from  examen_citas a, eco_atencion b, rango_edad c  where  a.id_cita = b.id_atencion   and  b.fecha_cita between @lfecha1 and @lfecha2
                    and  b.estado = '1' and  b.rango_edad = c.id_rango  and  b.tipo_pac = '2' 
                    and  a.id_examen not in ('88659663018814071014','75425583011662877015','34939469531515378150','18985351306406322966') 
                    
                    

        
select* from   examen_citas        
select *  FROM [SIGSALUD].[dbo].[ECO_EXAMEN] where NOMBRE like '%mama%'
select * from   eco_atencion