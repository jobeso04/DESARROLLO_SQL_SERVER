

EXECUTE SP_RAYOSX 123,'002-36985',CONVERT(DATETIME,'2015-08-17',101), '1',CONVERT(DATETIME,'2015-08-17',101),'01','234567899','995876251', '1','40','M', 'VALERIO QUISPE', 'SI', '452', 'SERVICIO', 0,0,0,0,0,0,0,0,0,0,'OBSERVACION', 'EXO', 0, 1,'FAMILIAR', 'RESPONSABLE', 'JOBESO',1,1,1,1,1,1,1,1,1,1

EXECUTE SP_RAYOSX '999','002-36985','2015-08-17', '1','2015-08-17','01','4567899','995876251', '1',40,'M', 'VALERIO QUISPE', 'SI', '452', 'SERCIO', 1,0,0,0,0,0,0,0,0,0, 'OBSERVACION', 'EXO', 0, 1,'FAMILIAR', 'RESPONSABLE', 'JOBESO',1,1,1,1,1,1,1,1,1,1


$result->bindParam(1,$this->rayos);
			$result->bindParam(2,$this->numero);
			$result->bindParam(3,$this->pago);
			$result->bindParam(4,$this->fecha);
			$result->bindParam(5,$this->programado);
			$result->bindParam(6,$this->fecha_programado);
			$result->bindParam(7,$this->seguro);
			$result->bindParam(8,$this->paciente);
			$result->bindParam(9,$this->telefono);			
			$result->bindParam(10,$this->tipo_edad);
			$result->bindParam(11,$this->edad);
			$result->bindParam(12,$this->sexo);
			$result->bindParam(13,$this->profesional);
			$result->bindParam(14,$this->ups);
			$result->bindParam(15,$this->his_codservicio);
			$result->bindParam(16,$this->his_nomservicio);
			$result->bindParam(17,$this->b18_24);
			$result->bindParam(18,$this->b24_30);
			$result->bindParam(19,$this->b30_40);
			$result->bindParam(20,$this->b14_14);
			$result->bindParam(21,$this->b14_17);
			$result->bindParam(22,$this->m18_24);
			$result->bindParam(23,$this->m24_30);
			$result->bindParam(24,$this->m30_40);
			$result->bindParam(25,$this->m14_14);
			$result->bindParam(26,$this->m14_17);
			$result->bindParam(27,$this->observacion);
			$result->bindParam(28,$this->exonerado);
			$result->bindParam(29,$this->informe);
			$result->bindParam(30,$this->entregado);
			$result->bindParam(31,$this->familiar);
			$result->bindParam(32,$this->responsable);
			$result->bindParam(33,$this->usuario);
			$result->bindParam(34,$this->db8_10);
			$result->bindParam(35,$this->db14_17);
			$result->bindParam(36,$this->db14_14);
			$result->bindParam(37,$this->db10_12);
            $result->bindParam(38,$this->db11_14);			
			$result->bindParam(39,$this->dm8_10);
			$result->bindParam(40,$this->dm14_17);
			$result->bindParam(41,$this->dm14_14);
			$result->bindParam(42,$this->dm10_12);
            $result->bindParam(43,$this->dm11_14);	