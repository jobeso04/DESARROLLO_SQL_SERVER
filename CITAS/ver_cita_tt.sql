use SIGSALUD
select * from CITA where CITA_ID = '160034629'

Select * from consultorio_parametro  where CONSULTORIO = '2021'

SELECT fecha, CONSULTORIO,  Numero,Hora FROM CITA WHERE Fecha=convert(datetime, '2016-01-03', 103) AND Consultorio='2021'