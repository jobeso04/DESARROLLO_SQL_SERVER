/* para el ANEXO 1 : FORMULARIO REFERENCIAL TURNOS TRABAJO MEDICO */
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
SELECT CODIGO, count(CODIGO) as cnt FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] WHERE MES = @lnmes AND ANIO = @lnanio and ID_ACTIVIDAD = 4
GROUP BY CODIGO order by count(CODIGO) desc






*/
 
/* consultorio */
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
DECLARE @lccodigo VARCHAR(13) = '084182'
declare @lcactividad varchar(1) = '4'
DECLARE @lt_cuenta_cem table (numero_dia varchar(6), cem varchar(2))
-- insert into @lt_cuenta_cem
select 'dia' + convert(varchar(2), A.DIA) as dia, a.DIA,  A.HORAS
 from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] A LEFT JOIN [BDPERSONAL].[dbo].[ACTIVIDADES] B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
LEFT JOIN [BDPERSONAL].[dbo].[MAESTRO] C  ON A.CODIGO = C.CODIGO
 where MES = @lnmes and anio = @lnanio AND A.ESTADO = 1 and A.CODIGO = @lccodigo and a.ID_ACTIVIDAD = @lcactividad  order by a.DIA 
select * from @lt_cuenta_cem


-- insert into [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]([NUMERO_DIA],[CEM])

 
INSERT INTO [BDPERSONAL].[dbo].[TMP_PRE_ANEXO1]([idactividad],[actividad],[dia1],[dia2],[dia3],[dia4],[dia5],[dia6],[dia7],[dia8],[dia9],[dia10],[dia11],[dia12],[dia13],[dia14],[dia15],[dia16],[dia17],
          [dia18],[dia19],[dia20],[dia21],[dia22],[dia23],[dia24],[dia25],[dia26],[dia27],[dia28],[dia29],[dia30],[dia31])
          
          
          
          
use BDPERSONAL
 EXEC SP_GET_ASISTENCIA_MAESTRO_12 '084182', '10', '2017'
 

 INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]([NUMERO_DIA],[CEM])
 
 
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
DECLARE @lccodigo VARCHAR(13) = '084376'
declare @lcactividad varchar(1) = '4'
SELECT	'dia' + convert(varchar(2), ROW_NUMBER() OVER(order by dia)) AS NUMERO_DIA, 
 ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST_1](DIA, MES, AÑO,  CODIGO, 4) ),'  ') as CEM
 FROM	[BDPERSONAL].[dbo].[ASISTENCIA]
 where	AÑO = @lnanio
   and	mes = @lnmes
   and codigo = @lccodigo
 order by dia


    truncate table [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]
    DECLARE @lnanio INT = 2017
    declare @lnmes int = 10
    DECLARE @lccodigo VARCHAR(13) = '084376'
    declare @lcactividad varchar(1) = 4
    INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]([NUMERO_DIA],[CEM])
    SELECT	'dia' + convert(varchar(2), ROW_NUMBER() OVER(order by dia)) AS NUMERO_DIA, 
     ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST_1](DIA, @lnmes, @lnanio,  @lccodigo, @lcactividad) ),'  ') as CEM
      FROM	[BDPERSONAL].[dbo].[ASISTENCIA]  where	AÑO = @lnanio  and	mes = @lnmes  and codigo = @lccodigo  order by dia


SELECT case when ISNUMERIC(HORAS) = 1 then HORAS else '&nbsp;&nbsp;&nbsp;' end HORAS
  FROM ACTIVIDAD_DETALLE
  where (ID_ACTIVIDAD = 4)
    AND	MES = 10
    AND	ANIO = 2017
      AND CODIGO = '084376'

	RETURN @ESTADO
	
	




select cem from tmp_cem where numero_dia = 'dia1'
lndia1 = 0
select cemv from tmp_cem where numero_dia = 'dia2'
lndia2 = 0
select cem from tmp_cem where numero_dia = 'dia3'
lndia1 = 6

INSERT INTO [BDPERSONAL].[dbo].[TMP_PRE_ANEXO1]([idactividad],[actividad],[dia1],[dia2],[dia3],[dia4],[dia5],[dia6],[dia7],[dia8],[dia9],[dia10],[dia11],[dia12],[dia13],
      [dia14],[dia15],[dia16],[dia17],[dia18],[dia19],[dia20],[dia21],[dia22],[dia23],[dia24],[dia25],[dia26],[dia27],[dia28],[dia29],[dia30],[dia31])



select * from tmp_cem 



 
 
 
 SELECT	 top 1
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST_1](DIA, MES, AÑO,  CODIGO, 4) ),'  ') as CEM
 FROM	ASISTENCIA
 where	AÑO = 2017
   and	mes = 10
   and codigo ='084182'
 order by dia
 
 SELECT	 top 2
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST_1](DIA, MES, AÑO,  CODIGO, 4) ),'  ') as CEM
 FROM	ASISTENCIA
 where	AÑO = 2017
   and	mes = 10
   and codigo ='084182'
 order by dia
 
 
 SELECT
(SELECT COUNT(respuesta) FROM pregunta1 WHERE respuesta = 'Alajuela') as 'Alajuela',
(SELECT COUNT(respuesta) FROM pregunta1 WHERE respuesta = 'Cartago') as 'Cartago',
(SELECT COUNT(respuesta) FROM pregunta1 WHERE respuesta = 'Heredia') as 'Heredia',
(SELECT COUNT(respuesta) FROM pregunta1 WHERE respuesta = 'Saprissa') as 'Saprissa'




select SUM(HORAS) as tt from dbo.ACTIVIDAD_DETALLE A LEFT JOIN ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
 where MES = 10 and anio = 2017 AND A.ESTADO = 1 AND B.ID_ACTIVIDAD  = 4



use sigsalud
select medico, TURNO_CONSULTA, COUNT(TURNO_CONSULTA) from cita where FECHA between  CONVERT(datetime, '2017-09-01', 101) and CONVERT(datetime, '2017-09-30', 101) 
and TURNO_CONSULTA in ('M', 'T') group by medico, TURNO_CONSULTA order by MEDICO 




select * from cita where FECHA between  CONVERT(datetime, '2017-09-01', 101) and CONVERT(datetime, '2017-09-30', 101) 
and TURNO_CONSULTA in ('M', 'T') order by FECHA asc




select SUM(HORAS) from dbo.ACTIVIDAD_DETALLE A LEFT JOIN ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
 where MES = 10 and anio = 2017 AND A.ESTADO = 1 and CODIGO = '084376' and a.ID_ACTIVIDAD = '4'  


select * from dbo.ACTIVIDAD_DETALLE A LEFT JOIN ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
 where MES = 10 and anio = 2017 AND A.ESTADO = 1 and CODIGO = '084376' 
 
 
  and a.ID_ACTIVIDAD = '4'  
  
  
  
