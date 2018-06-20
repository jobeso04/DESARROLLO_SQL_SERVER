USE BDPERSONAL
SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'BACA%'

/* UPDATE MAESTRO SET SITUACION = '11' WHERE CODIGO = '084160' */

/* PROBLEMA DE SOSA */

SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'navarrete%'

SELECT * FROM MAESTRO WHERE CODIGO = '084123'
SELECT * FROM MAESTRO WHERE CODIGO = '084123'
SELECT * FROM ASISTENCIA WHERE CODIGO = '084123' AND MES = 1 AND AÑO = 2016 ORDER BY DIA ASC
select codhor,codigo,nombre,horing,horsal from c_horario WHERE CODHOR = 'M4'
select codhor,codigo,nombre,horing,horsal from c_horario where codhor = 'M4'

/* update ASISTENCIA set HORAI = CONVERT(time(7), '08:00:00'), HORAS = CONVERT(time(7), '16:15:00') where CODIGO = '084123' AND MES = 1 AND AÑO = 2016  and CODACT = 'M4' */

select * from asistencia where CODIGO = '084123' AND MES = 1 AND AÑO = 2016  and CODACT = 'M4'
select * from asistencia where CODIGO = '084123' AND MES = 2 AND AÑO = 2016

/* para navarrete 084083 */ 
select * from MAESTRO where CODIGO = '084083'
select * from asistencia where CODIGO = '084083' AND MES = 1 AND AÑO = 2016  and CODACT = 'M4'
select * from asistencia where CODIGO = '084083' AND MES = 2 AND AÑO = 2016   

update ASISTENCIA set HORAI = CONVERT(time(7), '08:00:00'), HORAS = CONVERT(time(7), '16:15:00'), CODACT = 'M4' where CODIGO = '084083' AND MES = 1 AND AÑO = 2016  and CODACT = 'M8'
update ASISTENCIA set HORAI = CONVERT(time(7), '08:00:00'), HORAS = CONVERT(time(7), '16:15:00'), CODACT = 'M4' where CODIGO = '084083' AND MES = 2 AND AÑO = 2016  and CODACT = 'M8'

/* caso robles ramos lisset */

select * from MAESTRO where dni_actual = '40666400'
select * from dbo.GUARDIA_EFE where plaza = '40666400'
select * from dbo.GUARDIA_PRG where plaza = '40666400'


UPDATE dbo.GUARDIA_EFE  SET CARGO = 'TECNOLOGO MEDICO' WHERE plaza = '40666400'
UPDATE dbo.GUARDIA_PRG  SET CARGO = 'TECNOLOGO MEDICO' WHERE plaza = '40666400'

UPDATE dbo.GUARDIA_EFE  SET nivel = 'I' WHERE plaza = '40666400'
UPDATE dbo.GUARDIA_PRG  SET nivel = 'I' WHERE plaza = '40666400'


'Tecnologo Medico'
0020



