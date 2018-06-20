DECLARE @ln_mes int = 3
declare @lnanio int = 2018
declare @lc_periodo varchar(7) = RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), @ln_mes))),2) + CONVERT(VARCHAR(4), @lnanio)

/* PRIMER REPORTE DE HIS  */
select * from [SIGSALUD].[dbo].[HIS] where PERIODO = @lc_periodo and  hservicio in ('OBSTETRICIA', 'GINECO-OBSTETRICIA')

  /* SEGUNDO REPORTE DE EMERGENCIA  */
DECLARE @ln_mes int = 3
declare @lnanio int = 2018
select convert(varchar(10), fecha, 103) as fecha_atencion, historia, nombres, nombre_diagnostico, nombre_consultorio, nombre_motivo, nombre_medico, edad, OBSERVACION1 as observacion, ciex4,ciex3, ciex2, ciex1, ciex5, ciex6
 from [SIGSALUD].[dbo].[V_EMERGENCIA] where MONTH(fecha) = @ln_mes AND YEAR(FECHA) = @lnanio and CONSULTORIO like '4%'  order by FECHA asc

/* TERCER REPORTE DE HOSPITALIZACION */
 select * from [SIGSALUD].[dbo].[v_HOSPITALIZACION]
  where MONTH(fecha1) = @ln_mes AND YEAR(FECHA1) = @lnanio and Expr13 in ('OBSTETRICIA', 'GINECOLOGIA') ORDER BY HOSPITALIZACION_ID 


/* EXAMINAR LOS DATOS DE ECOGRAFIAS  */
USE SIGSALUD
DECLARE @ln_mes int = 3
declare @lnanio int = 2018
declare @lc_lista_de_consultorio  table (idconsultorio varchar(6)); insert @lc_lista_de_consultorio(idconsultorio) values('4041'),('4042')
select	UPPER(a.NOMBRES) AS NOMBRE_PACIENTE, dbo.histpac(a.Paciente) AS HISTORIA_PACIENTE, 
 	dbo.ECO_NOMEXAM(b.id_exc) as EXAMEN, CASE a.origen  when 'CE' then 'CONSULTA EXTERNA' when 'EM' then 'EMERGENCIA' when 'HO' then 'HOSPITALIZACION' when 'PE' 
 	then 'PERIFERIE' when 'PA' then 'PARTICULAR' else '-' end ORIGEN, 
 	 FECHA_CITA, substring(substring(c.edad,1,3),2,2) as EDAD
 				 from [SIGSALUD].[dbo].[ECO_ATENCION] a left join   [SIGSALUD].[dbo].[PACIENTE] c on c.paciente = a.paciente  left join [SIGSALUD].[dbo].[EXAMEN_CITAS] b on a.ID_ATENCION = b.ID_CITA
 				 where MONTH(a.FECHA_CITA) = @ln_mes AND YEAR(a.FECHA_CITA) = @lnanio and a.estado = '1' and a.HIS_CODSERVICIO in (select idconsultorio from @lc_lista_de_consultorio)
 				       order by substring(substring(c.edad,1,3),2,2) asc


