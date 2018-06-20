USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_BOTONES_USUARIO_WEB_OBS_BF]    Script Date: 09/05/2017 12:22:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_BOTONES_USUARIO_WEB_OBS_BF]
/* @dni char(8),
@modulo varchar(30),
@menu varchar(30),
@submenu varchar(30) */
AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	 
	SELECT     uw.DNI, uw.NOMBRES, am.ID_AM, am.NOMBRE AS MODULO, am.ESTADO AS ESTADO_MODULO, amenu.ID_MENU, amenu.NOMBRE AS MENU, 
                      amenu.ESTADO AS ESTADO_MENU, asubmenu.ID_SUBMENU, asubmenu.NOMBRE AS SUBMENU, asubmenu.ESTADO AS ESTADO_SUBMENU, abotones.ID_BOTON, 
                      abotones.NOMBRE AS NOMBRE_BOTON, abotones.ICONO, abotones.ID_HTML, abotones.ESTADO AS ESTADO_BOTON
         FROM         dbo.USUARIO_WEB AS uw INNER JOIN
                      dbo.ACCESO_MODULO AS am ON uw.DNI = am.DNI INNER JOIN
                      dbo.ACCESO_MENU AS amenu ON am.ID_AM = amenu.ID_AM INNER JOIN
                      dbo.ACCESO_SUBMENU AS asubmenu ON amenu.ID_MENU = asubmenu.ID_MENU INNER JOIN
                      dbo.ACCESO_BOTONES AS abotones ON asubmenu.ID_SUBMENU = abotones.ID_SUBMENU WHERE am.id_am ='4159563716000002' AND asubmenu.ID_SUBMENU = '4159563717000002';
	
	SELECT @ErrorVar = @@ERROR
		,@RowCountVar = @@ROWCOUNT;
	 
	IF @ErrorVar <> 0
		BEGIN
			SELECT 0 AS ESTADO,N'ERROR: error '
				+ RTRIM(CAST(@ErrorVar AS NVARCHAR(10)))
				+ N' occurred.' AS MENSAJE;						
			RETURN 1;
		END
	 
	-- Chequea row count. 
	IF @RowCountVar  = 0
	 BEGIN
		 SELECT 0 AS ESTADO,'NO SE HA PODIDO GUARDAR LOS DATOS, VERIFIQUE BIEN LOS CAMPOS.' AS MENSAJE;
		 RETURN 1;
	 END
END


GO


