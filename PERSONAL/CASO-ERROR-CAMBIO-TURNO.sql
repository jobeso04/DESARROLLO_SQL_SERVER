USE BDPERSONAL
SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%HUAMAN GUE%'
SELECT codigo,nombre FROM maestro where codigo = '" & lblcod1.Caption & "'
SELECT codigo,nombre FROM maestro where codigo = '054172'

SELECT codhor,codigo,nombre,horing,horsal FROM C_HORARIO where CODHOR = '" & lblturno1.Caption & "'

SELECT codhor,codigo,nombre,horing,horsal FROM C_HORARIO where CODHOR = 'GN2'

SELECT codhor,codigo,nombre,horing,horsal FROM C_HORARIO where CODHOR = 'MN2'

SELECT codhor,codigo,nombre,horing,horsal, * FROM C_HORARIO


SELECT * FROM dbo.T_Horarios

Select codact from asistencia where codigo ='054172' and  AÑO=2016 AND MES = 6 AND dia = '30'

Select * from asistencia where codigo ='054172' and  AÑO=2016 AND MES = 6 AND dia = '30'

Select * from asistencia where  AÑO=2016 AND MES = 6 AND dia = '30'

SELECT * FROM MAESTRO WHERE CODIGO = '084522'

