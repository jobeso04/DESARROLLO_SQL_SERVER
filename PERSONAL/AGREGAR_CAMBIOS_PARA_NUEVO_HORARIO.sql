use BDPERSONAL
update ASISTENCIA set HORAS = '15:15:00' where MES = 11 and AÑO = 2016 and DIA >= 14 and CODACT = 'M4'
update dbo.T_Horarios set HORSAL = '15:15' where CODHOR = 'M4'

