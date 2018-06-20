use sigsalud
select ESTADO, emergencia_id, b.NOMBRE, fecha, HORA, NOMBRES, relato, C.NOMBRE ENFERMERA
from EMERGENCIA a left join CONSULTORIO b on b.consultorio = a.consultorio
LEFT JOIN MEDICO C ON C.MEDICO = A.USUARIO_FN_VITALES
  where a.QUIEN_ATIENDE = 'ORR' order by a.emergencia_id desc




SELECT ESTADO, EMERGENCIA_ID, B.NOMBRE, A.NOMBRES, TEMPERATURA, PULSO, FC, PESO, SAT_OX, C.NOMBRE AS MEDICO_ASIGNADO FROM  EMERGENCIA a left join CONSULTORIO b on b.consultorio = a.consultorio
LEFT JOIN MEDICO C ON C.MEDICO = A.QUIEN_ATIENDE
  WHERE USUARIO_FN_VITALES = 'LME' order by a.emergencia_id desc


