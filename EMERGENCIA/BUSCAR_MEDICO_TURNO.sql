use SIGSALUD
select TOP 10 MEDICO, medico1, quien_atiende from EMERGENCIA order by fecha desc
SELECT DNI, CLAVE, NOMBRES, CARGO, FECHA_EXPIRACION FROM USUARIO_WEB WHERE DNI IN  (SELECT DNI FROM MEDICO WHERE MEDICO IN  (select TOP 3 MEDICO from EMERGENCIA order by fecha desc))
SELECT NOMBRE, DNI FROM MEDICO WHERE MEDICO IN  (select TOP 3 MEDICO1 from EMERGENCIA order by fecha desc)
SELECT NOMBRE, DNI FROM MEDICO WHERE MEDICO IN  (select TOP 3 QUIEN_ATIENDE from EMERGENCIA order by fecha desc)