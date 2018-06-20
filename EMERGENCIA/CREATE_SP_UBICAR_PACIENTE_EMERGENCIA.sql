USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_UBICAR_PACIENTE_EMERGENCIA]    Script Date: 11/09/2015 10:55:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEIT
-- Create date: 09/11/2015
-- Description:	CAMBIAR ESTADO DEL PACIENTE
-- =============================================
CREATE PROCEDURE [dbo].[SP_UBICAR_PACIENTE_EMERGENCIA] 
	-- Add the parameters for the stored procedure here
	@lcnombre varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
     select t1.EMERGENCIA_ID, t1.ESTADO, t1.FECHA, t1.HORA, t1.HISTORIA, t1.NOMBRES, t1.SEXO, RTRIM(t3.nombre) as segu, t4.NOMBRE as consul
               from V_EMERGENCIA t1 LEFT JOIN SEGURO T3 ON T3.SEGURO = T1.SEGURO   LEFT JOIN CONSULTORIO T4 ON T4.CONSULTORIO = T1.CONSULTORIO 
                     where t1.ESTADO in ('4','5') and  t1.nombres LIKE '%' + @lcnombre + '%' order by fecha DESC      

END

GO


