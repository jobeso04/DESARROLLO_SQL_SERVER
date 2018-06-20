use sigsalud
EXEC SP_GET_EMERGENCIA_18 '28/03/2016', 'juan', '3050', 0, 'ENF', '1'

EXEC SP_GET_EMERGENCIA_18 :fecha, :nombres, :id_consultorio, :mis_pacientes, :profesional , :id_emergencia_estado";