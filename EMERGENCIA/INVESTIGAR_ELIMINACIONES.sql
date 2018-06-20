$sentencia = "EXEC SP_GUARDAR_FUNSIONES_VITALES ?,?,?,?,?,?,?,?,?,?,?,?";

		$resultado = $this->_db->prepare($sentencia);
		$resultado->execute(array($e->getEmergencia_id(),$e->getTemperatura(),$e->getPresion(),$e->getPresiond(),$e->getPulso(),$e->getFr(),$e->getPeso(),$e->getFc(),$e->getSat_ox(),$e->getUsuario_fn_vitales(),$e->getQuien_atiende(),$e->getEstado()));
		$imprimir = $resultado->fetch(PDO::FETCH_OBJ);
		$array = array('estado' => $imprimir->ESTADO, 'mensaje' => $imprimir->MENSAJE);
		
		
EXEC SP_GUARDAR_FUNSIONES_VITALES ?,?,?,?,?,?,?,?,?,?,?,?


/* EXEC SP_GUARDAR_FUNSIONES_VITALES '16048334', 38, 0,0,155, 89, 65.3, 74, 97, 'AFA', 'CTF', '3' */




/* ELIMINAR EL REGISTRO DE LAS FUNCIONES VITALES - EMERGENCIA - MEDICINA */
UPDATE EMERGENCIA SET TEMPERATURA=0.0,PRESION=0.0,PRESIOND=0.0,PULSO=0.0,FR=0.0,PESO=0.0,FC=0.0,SAT_OX=0.0,USUARIO_FN_VITALES='',QUIEN_ATIENDE='' ,ESTADO='2'
   WHERE EMERGENCIA_ID='16048129'
DELETE FROM  EMERGENCIA_DET_WEB  WHERE EMERGENCIA_ID='16048129'
/*** CONSIDERAR ESTE SQUERY EN EL PROGRAMA - EMERGNEICA MEDICINA */




USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_FUNSIONES_VITALES]    Script Date: 10/20/2016 15:10:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 
ALTER PROCEDURE [dbo].[SP_GUARDAR_FUNSIONES_VITALES]
@emergencia_id char(8),
@temperatura float,
@presion float,
@presiond float,
@pulso float,
@fr float,
@peso float,
@fc float,
@sat_ox float,
@usuario char(8),
@medico char(8),
@estado char(1)
AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	 
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);
	DECLARE @lugar char(5);
	SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	
	UPDATE EMERGENCIA SET TEMPERATURA=@temperatura,PRESION=@presion,PRESIOND=@presiond,PULSO=@pulso,FR=@fr,PESO=@peso,FC=@fc,SAT_OX=@sat_ox,USUARIO_FN_VITALES=@usuario,QUIEN_ATIENDE=@medico ,ESTADO=@estado WHERE EMERGENCIA_ID=@emergencia_id;
	
	select @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();
	
	INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,PROFESIONAL,EMERGENCIA_ID,FECHA,HORA,FECHA_HORA_REG,TIPO_PROCESO,LUGAR,
	AHORA_PROFESIONAL,ESTADO) VALUES (@id_eme_det_web, @usuario, @emergencia_id, GETDATE(), GETDATE(), GETDATE(), 'P06',@lugar,
	@medico, 1);
	
	
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
	IF @RowCountVar  = 1
	 BEGIN
		 SELECT 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE.' AS MENSAJE;
		 RETURN 1;
	 END
END
GO

