/*buscando cada Paciente con sus controles en Hospitalizacion:*/
select * from SIGSALUD.DBO.HOSPITALIZACION WHERE year(fecha1)=2015 and month(fecha1) between 01 and 06 
and CODIGOESPE12 in (40,4041,4042,4043,4050,4060,4090,4091) and PACIENTE=2008003005


/*ENTONCES usandom la relacion:*/
use SIGSALUD
select * from his H,HOSPITALIZACION HOS WHERE year(fecha1)=2015 and month(fecha1) between 01 and 06 
and CODIGOESPE12 in (40,4041,4042,4043,4050,4060,4090,4091) AND h.id_paciente=hos.paciente 