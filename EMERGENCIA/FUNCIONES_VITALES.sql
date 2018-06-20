


/* EXEC dbo.SP_GUARDAR_FUNSIONES_VITALES  */ 

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

?,?,?,?,?,?,?,?,?,?,?,?";

EXEC SP_GUARDAR_FUNSIONES_VITALES '15030960',25,120,85,85,52,60,52,50,'JOBESO','CHACA','3','ATENCION RAPIDA DE MEDICINA'

EMER_ID = '15030960'
TEMEPRATURA = 25
PRESION = 120
PULSO = 150
FR = 85
PES = 85
FC = 52
OC = 50
USER = JOBESO
QUIEN_ATIENDE: MEDICINA

($e->getEmergencia_id(),$e->getTemperatura(),$e->getPresion(),$e->getPresiond(),$e->getPulso(),$e->getFr(),$e->getPeso(),$e->getFc(),$e->getSat_ox(),$e->getUsuario_fn_vitales(),$e->getQuien_atiende(),$e->getEstado()));

SELECT * FROM EMERGENCIA WHERE EMERGENCIA_ID = '15030960'
SELECT * FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '15030960'
