use sigsalud


select convert(varchar(10), fecha, 101) as fecha_atencion, historia, nombres, nombre_diagnostico, nombre_consultorio, nombre_motivo, nombre_medico, edad, OBSERVACION1 as observacion, ciex4,ciex3, ciex2, ciex1, ciex5, ciex6
 from v_EMERGENCIA where fecha between  '01/02/2018' and '28/02/2018'
 and CONSULTORIO like '4%'  order by FECHA asc

select convert(varchar(10), a.FECHA,101) as FECHA, HISTORIA, NOMBRES, a.NOMCONSULTORIO, NOMBRE_MEDICO, edad, DX, upper(DX_DES) DIAGNOSTICO 
 from v_ATENCIONC a left join V_ATENCIOND b on a.ID_CITA = b.ID_CITA
 where a.CONSULTORIO like '4%' and a.FECHA between  '01/09/2017' and '30/09/2017' order by a.ID_CITA asc
 
 
 
 select * from [SIGSALUD].[dbo].[v_HOSPITALIZACION]
  where FECHA1 between  '01/11/2017' and '30/11/2017' and Expr13 in ('OBSTETRICIA', 'GINECOLOGIA')
  
  
  /* PRIMER REPORTE DE ATENCIONES CONSULTORIOS */
    select * from [SIGSALUD].[dbo].[HIS] where PERIODO = '032018' and  hservicio in ('OBSTETRICIA', 'GINECO-OBSTETRICIA')

  /* SEGUNDO REPORTE DE EMERGENCIA  */
select convert(varchar(10), fecha, 103) as fecha_atencion, historia, nombres, nombre_diagnostico, nombre_consultorio, nombre_motivo, nombre_medico, edad, OBSERVACION1 as observacion, ciex4,ciex3, ciex2, ciex1, ciex5, ciex6
 from [SIGSALUD].[dbo].[V_EMERGENCIA] where MONTH(fecha) = 3 AND YEAR(FECHA) = 2018  and CONSULTORIO like '4%'  order by FECHA asc

/* TERCER REPORTE DE HOSPITALIZACION */
 select * from [SIGSALUD].[dbo].[v_HOSPITALIZACION]
  where MONTH(FECHA1) = 3 AND YEAR(FECHA1) = 2018 and Expr13 in ('OBSTETRICIA', 'GINECOLOGIA')


  
  select HSERVICIO  from HIS where PERIODO = '022018' group by hservicio