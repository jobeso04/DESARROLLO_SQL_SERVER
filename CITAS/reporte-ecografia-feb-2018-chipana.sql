/* EXAMINAR LOS DATOS DE ECOGRAFIAS  */
USE SIGSALUD
declare @lcfecha1 varchar(10) = convert(date, '01/02/2018')
declare @lcfecha2 varchar(10) = convert(date, '28/02/2018')
declare @lc_lista_de_consultorio  table (idconsultorio varchar(6)); insert @lc_lista_de_consultorio(idconsultorio) values('4041'),('4042')

select	UPPER(a.NOMBRES) AS NOMBRE_PACIENTE, dbo.histpac(a.Paciente) AS HISTORIA_PACIENTE, 
 	dbo.ECO_NOMEXAM(b.id_exc) as EXAMEN, CASE a.origen  when 'CE' then 'CONSULTA EXTERNA' when 'EM' then 'EMERGENCIA' when 'HO' then 'HOSPITALIZACION' when 'PE' 
 	then 'PERIFERIE' when 'PA' then 'PARTCULAR' else '-' end ORIGEN, 
 	 FECHA_CITA, substring(substring(c.edad,1,3),2,2) as edad 
 				 from eco_atencion a left join   paciente c on c.paciente = a.paciente  left join examen_citas b on a.ID_ATENCION = b.ID_CITA
 				 where a.FECHA_CITA BETWEEN  @lcfecha1 AND @lcfecha2 and a.estado = '1' and a.HIS_CODSERVICIO in (select idconsultorio from @lc_lista_de_consultorio)
 				       order by substring(substring(c.edad,1,3),2,2) asc




/* TODOEL AÑO * PRODUCCION DE ECOGRFIA - UNIDAD DE CALIDAD */

/* CITAS POR MEDICO */


SELECT * FROM [SIGSALUD].[dbo].[ECO_ATENCION] ORDER BY FECHA_ANUL DESC


declare @lcfecha1 date  = convert(date, '01/01/2018')
declare @lcfecha2 date = convert(date, '30/04/2018')
DECLARE @lt_ecografia AS TABLE (USER_CREA VARCHAR(10), CANTIDAD INT)
INSERT @lt_ecografia
SELECT A.USER_CREA, COUNT(A.USER_CREA) FROM [SIGSALUD].[dbo].[ECO_ATENCION] A 
  where a.FECHA_CITA between @lcfecha1 and @lcfecha2
  GROUP BY A.USER_CREA
SELECT A.USER_CREA, B.NOMBRES, A.CANTIDAD from @lt_ecografia A LEFT JOIN [SIGSALUD].[dbo].[USUARIO_WEB] B
ON A.USER_CREA = B.DNI



/*
declare @lt_medicos as table (medico varchar(5), cantidad int)
insert @lt_medicos
select a.MEDICO, COUNT(a.medico) as total from [SIGSALUD].[dbo].[ECO_ATENCION] A 
  where MONTH(a.FECHA_CITA) >= @ln_mes and YEAR(a.fecha_cita) = @ln_anio group by a.MEDICO order by a.MEDICO
select B.NOMBRE, sum(a.cantidad) from @lt_medicos a left join  [SIGSALUD].[dbo].[MEDICO] B ON A.medico = B.MEDICO  group by B.NOMBRE
*/

