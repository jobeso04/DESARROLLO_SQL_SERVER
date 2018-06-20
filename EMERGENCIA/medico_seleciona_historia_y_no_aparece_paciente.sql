/* Medico Selecciona un Paciente y aparace un mensaje , no se seleciono paciente */
/* mensaje: Debe de seleccionar primero a un paciente y luego hacer click en el boton utilizar historia de emergencia. */

use SIGSALUD
declare @lidemergencia varchar(13) = '16037293'
 
/* ok: 16029865 */
/* select  * from EMERGENCIA where EMERGENCIA_ID = @lidemergencia */
 
 
 
 /* primera condicion */
select 'ESTADO CIVIL' AS COLUMNA, ESTADO_CIVIL AS NOMBRE from estado_civil where estado_civil = (select estado_civil from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'SEXO' AS COLUMNA, SEXO AS NOMBRE from sexo where SEXO = (select sexo from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'LOCALIDAD' AS COLUMNA, LOCALIDAD as nombre from localidad where localidad = (select localidad from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
union all
select 'PACIENTE' AS COLUMNA, PACIENTE from paciente where paciente = (select paciente from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'USUARIO FUNCIONES VITALES ' AS COLUMNA, medico AS NOMBRE from MEDICO where MEDICO = (select usuario_fn_vitales from EMERGENCIA where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'DNI' AS COLUMNA, DNI AS NOMBRE  from usuario_web where dni = (select dni from medico where medico = (select usuario_fn_vitales from EMERGENCIA where EMERGENCIA_ID = @lidemergencia))
UNION ALL
select 'TIPO SEGURO ' AS COLUMNA, seguro AS NOMBRE  from SEGURO where SEGURO = (select SEGURO from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'CONSULTORIO' AS COLUMNA, CONSULTORIO AS NOMBRE from consultorio where consultorio = (select consultorio from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'MOTIVO_EMERGENCIA' AS COLUMNA, MOTIVO_EMERGENCIA AS NOMBRE from motivo_emergencia where MOTIVO_EMERGENCIA  = (select MOTIVO_EMERGENCIA from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'MEDICO ASIGANDO EN ADMISION - MEDICO' AS COLUMNA, MEDICO AS NOMBRE from medico where medico = (select MEDICO from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'MEDICO ASIGNADO POR ENFERMERA - MEDICO1' AS COLUMNA, MEDICO AS NOMBRE from medico where medico  = (select MEDICO1 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'MEDICO ASIGNADO POR ENFERMERA - QUIEN_ATIENDE' AS COLUMNA, MEDICO AS NOMBRE from medico where medico  = (select QUIEN_ATIENDE from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'USUARIO_ALTA_ENF' AS COLUMNA, MEDICO AS NOMBRE from medico where medico  = (select usuario_alta_enf from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'CIEX 1 - Dx DE SALIDA' AS COLUMNA, CIEX AS NOMBRE from CIEX where ciex = (select ciex1 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL 
select 'CIEX 2 - Dx DE SALIDA' AS COLUMNA, CIEX AS NOMBRE from CIEX where ciex = (select ciex2 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'CIEX 3 - Dx DE SALIDA' AS COLUMNA, CIEX AS NOMBRE from CIEX where ciex = (select ciex3 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'CIEX 4 - Dx DE ENTRADA' AS COLUMNA, CIEX AS NOMBRE from CIEX where ciex = (select ciex4 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'CIEX 5 - Dx DE ENTRADA' AS COLUMNA, CIEX AS NOMBRE from CIEX where ciex = (select ciex5 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'CIEX 6 - Dx DE ENTRADA' AS COLUMNA, CIEX AS NOMBRE from CIEX where ciex = (select ciex6 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'DESTINO' as columna, destino AS NOMBRE from destino where destino = (select destino from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'LUGAR' as columna, lugar AS NOMBRE from emergencia_lugar_web where lugar = (select estado_paciente from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
UNION ALL
select 'RELIGION' AS columna, RELIGION as nombre from religion where religion = (select religion from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
union all
select 'OCUPACION' AS COLUMNA, OCUPACION as nombre from ocupacion where ocupacion = (select OCUPACION  from paciente where paciente = (select paciente from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia))



 update EMERGENCIA set QUIEN_ATIENDE = 'CVD' where EMERGENCIA_ID =  '16037293'

/* select ciex4 from emergencia where EMERGENCIA_ID = '16036866' */


/* update EMERGENCIA set ciex4 = 'R10.1' where EMERGENCIA_ID = '16036866' */
/* update EMERGENCIA set ciex4 = '' where EMERGENCIA_ID = '16036866' */

/* update EMERGENCIA set seguro = '0' where EMERGENCIA_ID = '16036866' */


/*
select * from MEDICO where MEDICO = 'MCS' */

/* update MEDICO set dni = '16169791' where MEDICO = 'MCS' */
/* select * from USUARIO_WEB where dni = '16169791' */


/*
DECLARE @resultado VARCHAR(5) 
select @resultado = seguro from EMERGENCIA where EMERGENCIA_ID = '16036866'
if @resultado = '' begin
   SELECT '0' RESULTADO
end
else begin
  SELECT '1' RESULTADO
end
*/


        declare @lfecha1 datetime = convert(datetime, '2016-08-16', 101)
        declare @lfecha2 datetime = convert(datetime, '2016-08-20', 101)
        use SIGSALUD
        TRUNCATE TABLE  [SIGSALUD].[dbo].[TMP_EMER_REPARAR]
        SELECT EMERGENCIA_ID, FECHA, NOMBRES, ESTADO, PACIENTE, HISTORIA, NOMBRE_SEGURO, NOMBRE_CONSULTORIO, OBSERVACION1 
              FROM V_EMERGENCIA WHERE EMERGENCIA_ID NOT IN ('89000002', '89000001') AND FECHA between  @lfecha1 and @lfecha2 ORDER BY EMERGENCIA_ID DESC

