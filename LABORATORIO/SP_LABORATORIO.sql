/* PARA EL REGISTRO EN LABORATORIO */


/* PARA PAGANTES */
use sigsalud
declare @lrecibepeticion varchar(20) = 'B001-0997184'  
/* declare @lrecibepeticion varchar(20) = 'H0225042'  */
declare @ltipodocumento varchar(1) = substring(@lrecibepeticion,1,1)
declare @boleta varchar(20) = substring(@lrecibepeticion,2,11)
declare @historia varchar(20) = substring(@lrecibepeticion,2,11)

if @ltipodocumento = 'B'
  SELECT b.historia  as HISTORIA, b.NOMBRE as NOMBRES, b.DOCUMENTO as DOCUMENTO, '0' as SEGURO, b.sexo as SEXO, a.NOMBRE_CONSULTORIO   FROM V_PAGOC A 
   left join PACIENTE b on a.PACIENTE = b.PACIENTE WHERE a.NUMERO = @boleta;
else
 select HISTORIA, NOMBRES, DOCUMENTO, SEGURO, SEXO, CONSULTORIO AS NONMBRE_CONSULTORIO from V_ATENCION_SEGURO WHERE HISTORIA = @historia;
go 
 
 
 
 
 