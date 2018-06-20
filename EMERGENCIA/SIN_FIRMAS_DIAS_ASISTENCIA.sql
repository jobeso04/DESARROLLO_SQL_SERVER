 USE SIGSALUD
  DECLARE @LCFECHA1 VARCHAR(12) = '2017-03-01'
  DECLARE @LCFECHA2 VARCHAR(12) = '2017-03-24'
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
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_SIN_FIRMA]
  INSERT INTO [SIGSALUD].[dbo].[TMP_SIN_FIRMA]([MEDICO],[NOMBRE],[ABREVIATURA],[DNI],[CLAVE],[ESPECIALIDAD],[COLEGIO],[TIENE_FIRMA],[TIENE_FIRMA_DESCRIPCION],[FECHA_EXPIRACION])
   select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, a.COLEGIO,
    A.TIENE_FIRMA, CASE WHEN A.TIENE_FIRMA = '1' THEN 'TIENE FIRMA' ELSE '--- NO TIENE FIRMA---' END AS TIENE_FIRMA_DESCRIPCION, B.FECHA_EXPIRACION from V_MEDICO A 
     LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where  TIENE_FIRMA is null 
      and A.MEDICO  in (select distinct MEDICO from [SIGSALUD].[dbo].[turno_medico] where MEDICO <> '0') AND A.ABREVIATURA IN ('MED', 'OBS')
   union all  
   select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, a.COLEGIO,
    A.TIENE_FIRMA, CASE WHEN A.TIENE_FIRMA = '1' THEN 'TIENE FIRMA' ELSE '--- NO TIENE FIRMA---' END AS TIENE_FIRMA_DESCRIPCION, B.FECHA_EXPIRACION from V_MEDICO A 
     LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where  TIENE_FIRMA = '0' and A.MEDICO  in (select distinct MEDICO from [SIGSALUD].[dbo].[turno_medico] where MEDICO <> '0') AND A.ABREVIATURA IN ('MED', 'OBS')
   order by A.nombre asc
   
 SELECT [MEDICO],[NOMBRE],[ABREVIATURA],[DNI],[CLAVE],[ESPECIALIDAD],[COLEGIO],[TIENE_FIRMA],[TIENE_FIRMA_DESCRIPCION],[FECHA_EXPIRACION], ASISTENCIA    FROM [SIGSALUD].[dbo].[TMP_SIN_FIRMA]
 
 


   
   
      USE BDPERSONAL
      DECLARE @lcdni VARCHAR(13) = '16804809'
       select CODACT + ' - ' + convert(varchar(2), DIA) + '/' + convert(varchar(2), MES) + '/' + convert(varchar(4), AÑO) + ' - ' + CONVERT(VARCHAR(5), HORAI) + ' - ' + 
      CONVERT(VARCHAR(5), HORAS) as horario  
       FROM ASISTENCIA WHERE CODIGO = (SELECT CODIGO FROM MAESTRO WHERE DNI = @lcdni) AND MES = 3 - 1 AND AÑO = 2017 AND DIA >= 1 AND CODACT <> 'D'
       

  USE BDPERSONAL
  DECLARE @lcdni VARCHAR(13) = '16804809'
  DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, CONVERT(VARCHAR(4), 2017) + '-' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), 3))),2) + '-' +  RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), 24))),2), 101)
  declare @lcfecha2 datetime = DATEADD(month, 1, @lcfecha1)
  declare @lnmesnext int =  month(@lcfecha2)
  declare @lnanionext int = year(@lcfecha2)
  select CODACT + ' - ' + convert(varchar(2), DIA) + '/' + convert(varchar(2), MES) + '/' + convert(varchar(4), AÑO) + ' - ' + CONVERT(VARCHAR(5), HORAI) + ' - ' + 
                  CONVERT(VARCHAR(5), HORAS) as horario  
                  FROM ASISTENCIA WHERE CODIGO = (SELECT CODIGO FROM MAESTRO WHERE DNI = @lcdni) AND MES = @lnmesnext AND AÑO = @lnanionext AND DIA >= 1 AND CODACT <> 'D'
                  



  
  
  select @lnmesnext, @lnanio
  
  
  select MES, AÑO, DIA   
       FROM ASISTENCIA WHERE CODIGO = (SELECT CODIGO FROM MAESTRO WHERE DNI = @lcdni) AND MES = 3 AND AÑO = 2017 AND DIA >= DAY(GETDATE()) + 10 AND CODACT <> 'D'
       
SELECT MES = 3 AND AÑO = 2017 AND DIA + 10       

SELECT CONVERT(DATETIME, CONVERT(VARCHAR(4), 2017) + '-' + CONVERT(VARCHAR(2), 3) + '-' + CONVERT(VARCHAR(2), 24))

SELECT CONVERT(VARCHAR(4), 2017) + '-' + CONVERT(VARCHAR(2), 3) + '-' + CONVERT(VARCHAR(2), 24)

SELECT CONVERT(DATETIME, CONVERT(VARCHAR(4), 2017) + '-' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), 3))),2) + '-' +  RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), 24))),2), 101)



 

 
          USE BDPERSONAL
          DECLARE @lcdni VARCHAR(13) = ?lcdni
          DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, CONVERT(VARCHAR(4), ?lnanio) + '-' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), ?lnmes))),2) + '-' +  RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), ?lndias))),2), 101)
          declare @lcfecha2 datetime = DATEADD(month, 1, @lcfecha1)
          declare @lnmesnext int =  month(@lcfecha2)
          declare @lnanio int = year(@lcfecha2)
          select CODACT + ' - ' + convert(varchar(2), DIA) + '/' + convert(varchar(2), MES) + '/' + convert(varchar(4), AÑO) + ' - ' + CONVERT(VARCHAR(5), HORAI) + ' - ' + 
                  CONVERT(VARCHAR(5), HORAS) as horario  
                  FROM ASISTENCIA WHERE CODIGO = (SELECT CODIGO FROM MAESTRO WHERE DNI = @lcdni) AND MES = @lnmesnext AND AÑO = @lnanio AND DIA >= 1 AND CODACT <> 'D'

