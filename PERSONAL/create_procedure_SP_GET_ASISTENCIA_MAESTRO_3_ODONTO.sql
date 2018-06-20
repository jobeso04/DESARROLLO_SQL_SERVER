USE [BDPERSONAL]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_ASISTENCIA_MAESTRO_3_ODONTO]    Script Date: 08/28/2017 16:26:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[SP_GET_ASISTENCIA_MAESTRO_3_ODONTO]	
					@CODIG  CHAR(6),
					@MES	CHAR(2),
					@ANIO	CHAR(4)
AS	
BEGIN	
	set nocount on	
 SELECT	 
		CASE B.CODTUR	
			WHEN 'D' THEN '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'  
			ELSE B.CODTUR 
		 END CODTUR, 
		CASE SUBSTRING(DATENAME(weekday, (right( '00' + cast( a.DIA AS varchar(2)), 2 ) + '/' + CONVERT(varchar(2), a.MES) + '/' + CONVERT(varchar(4), a.AÑO))),1,2) 
			WHEN 'DO' then '#FEBDBD' 
			else '#FDFCFC' 
		end color,  
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST](A.DIA, A.MES, A.AÑO,  A.CODIGO, 78) ),'  ') as ADM,
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST](A.DIA, A.MES, A.AÑO,  A.CODIGO, 77) ),'  ') as CON,
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST](A.DIA, A.MES, A.AÑO,  A.CODIGO, 79) ),'  ') as INTER,
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST](A.DIA, A.MES, A.AÑO,  A.CODIGO, 76) ),'  ') as RAD,
		ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST](A.DIA, A.MES, A.AÑO,  A.CODIGO, 80) ),'  ') as VMH,
		A.HORAI,    
		A.HORAS,   
		A.TIPO 
  FROM	ASISTENCIA A 
  JOIN T_HORARIOS B 
    ON A.CODACT = B.CODHOR 
 where	A.AÑO = @ANIO
   and	A.mes = @MES  
   and A.codigo = @CODIG
 order by A.dia, a.SITUACION 
 
END

GO


