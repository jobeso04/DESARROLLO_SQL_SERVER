USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[VER_PACIENTES]    Script Date: 04/26/2016 12:46:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		UEIT
-- Create date: 11-04-2016
-- Description:	SP PARA LABORATORIO
-- =============================================
CREATE PROCEDURE [dbo].[VER_PACIENTES] 
	@lrecibe varchar(15)
AS
	SET NOCOUNT ON
	SET LANGUAGE Spanish
    declare @ltipodocumento varchar(1) = substring(@lrecibe,1,1)
    declare @boleta varchar(20) = substring(@lrecibe,2,11)
    declare @historia varchar(20) = substring(@lrecibe,2,11)
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
    if @ltipodocumento = 'B'
    SELECT  a.PAGOID, b.historia  as HISTORIA, B.PATERNO, B.MATERNO, b.NOMBRE, A.NOMBRE as NOMBRE_BOLETA, DOCUMENTO as DOCUMENTO, '0' as SEGURO, b.sexo as SEXO, a.NOMBRE_CONSULTORIO, b.FECHA_NACIMIENTO AS FECHA_NAC, c.ITEM, c.NOMBRE    FROM V_PAGOC A 
         left join PACIENTE b on a.PACIENTE = b.PACIENTE inner join V_PAGOD c on c.PAGOID = a.PAGOID WHERE a.NUMERO = @boleta;
    else
      select '' PAGOID, A.HISTORIA, A.PATERNO, A.MATERNO, A.NOMBRE, 'SEGURO' AS NOMBRE_BOLETA, DOCUMENTO, SEGURO, A.SEXO, A.CONSULTORIO AS NOMBRE_CONSULTORIO, A.FECHA_NAC AS FECHA_NAC, '' ITEM, '' NOMBRE
       from V_ATENCION_SEGURO A WHERE HISTORIA = @historia;
END


GO


