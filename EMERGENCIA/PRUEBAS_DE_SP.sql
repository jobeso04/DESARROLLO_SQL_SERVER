$sentencia = "EXEC SP_GUARDAR_FUNSIONES_VITALES ?,?,?,?,?,?,?,?,?,?,?,?";
		$resultado = $this->_db->prepare($sentencia);
		$resultado->execute(array($e->getEmergencia_id(),$e->getTemperatura(),$e->getPresion(),$e->getPresiond(),$e->getPulso(),$e->getFr(),$e->getPeso(),$e->getFc(),$e->getSat_ox(),$e->getUsuario_fn_vitales(),$e->getQuien_atiende(),$e->getEstado()));
		$imprimir = $resultado->fetch(PDO::FETCH_OBJ);
		$array = array('estado' => $imprimir->ESTADO, 'mensaje' => $imprimir->MENSAJE);
		return json_encode($array);
		
	
	
	
	
EXEC SP_GUARDAR_FUNSIONES_VITALES '15038100', 36, 63, 10, 25, 56,80,90, 'MCHUYES', 'CLE', '3'

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