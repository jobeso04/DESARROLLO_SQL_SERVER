USE SIGSALUD
  DECLARE @LCFECHA1 VARCHAR(12) = '2017-03-01'
  DECLARE @LCFECHA2 VARCHAR(12) = '2017-03-20'
  IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'turno_medico')
	BEGIN
		DROP TABLE turno_medico   
	END
  select medico into turno_medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) group by MEDICO
  ALTER TABLE turno_medico alter column medico varchar(10);
  ALTER TABLE turno_medico add fecha_expiracion varchar(50);
  INSERT INTO [SIGSALUD].[dbo].[turno_medico]
           ([medico])
  (select MEDICO1 as medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) and medico1 is not null group by MEDICO1 
   union all
   select QUIEN_ATIENDE as medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) and QUIEN_ATIENDE is not null  group by QUIEN_ATIENDE)
   union all
   select PROFESIONAL as medico from  dbo.EMERGENCIA_DET_WEB where FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101)
   
   select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, 
    A.TIENE_FIRMA, CASE WHEN A.TIENE_FIRMA = '1' THEN 'TIENE FIRMA' ELSE '--- NO TIENE FIRMA---' END AS TIENE_FIRMA, B.FECHA_EXPIRACION from V_MEDICO A 
     LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where  TIENE_FIRMA is null 
      and A.MEDICO  in (select distinct MEDICO from [SIGSALUD].[dbo].[turno_medico] where MEDICO <> '0') AND A.ABREVIATURA IN ('MED', 'OBS')
   union all  
   select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, 
    A.TIENE_FIRMA, CASE WHEN A.TIENE_FIRMA = '1' THEN 'TIENE FIRMA' ELSE '--- NO TIENE FIRMA---' END AS TIENE_FIRMA, B.FECHA_EXPIRACION from V_MEDICO A 
     LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where  TIENE_FIRMA = '0' and A.MEDICO  in (select distinct MEDICO from [SIGSALUD].[dbo].[turno_medico] where MEDICO <> '0') AND A.ABREVIATURA IN ('MED', 'OBS')
   order by A.nombre asc
   
   
   
   
   USE BDPERSONAL
   SELECT DNI, CODIGO, NOMBRE, UNIDAD_ORGANICA, CARGO_FUNCIONAL, SITUACION_LABORAL FROM V_MAESTRO WHERE NOMBRE LIKE '%' + 'SOTO' + '%' 
   ORDER BY NOMBRE ASC
   
   
   SELECT CODACT, DIA, MES, AÑO, HORAI, HORAS 
   FROM ASISTENCIA WHERE CODIGO IN ('084029') AND MES = MONTH(GETDATE()) AND AÑO = YEAR(GETDATE()) ORDER BY DIA ASC
   
   
   SELECT DAY(GETDATE())
   