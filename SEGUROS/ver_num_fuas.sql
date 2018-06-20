 DECLARE @lincremento numeric(18,0) = convert(numeric(18,0), 11)
 
 DECLARE @llinicial char(8) = convert(char(8), (select TOP 1 CONVERT(CHAR(8),(CONVERT(NUMERIC(8,0), ATENCION_SEGURO_ID) + 1)) AS ATENCION_SEGURO_ID from [SIGSALUD].[dbo].[ATENCION_SEGURO] order by NUMATENCION desc ))
 DECLARE @lnfua varchar(13) = convert(varchar(13), (SELECT TOP 1 convert(varchar(13), (CONVERT(NUMERIC(18,0), NUMATENCION) + 2 + @lincremento)) AS NFUA  from [SIGSALUD].[dbo].[ATENCION_SEGURO] order by NUMATENCION desc))
 INSERT INTO [SIGSALUD].[dbo].[ATENCION_SEGURO] (ATENCION_SEGURO_ID, NUMATENCION, PACIENTE, HISTORIA, NOMBRES, FECHA_ATENCION, HORA_ATENCION, ESTADO)
      VALUES (@llinicial,@lnfua,'0000000000', '0000000', 'USUARIO A MODIFICAR', GETDATE(), '00:00', '0')
SELECT @llinicial as ini, @lnfua as fin, @lincremento as incre