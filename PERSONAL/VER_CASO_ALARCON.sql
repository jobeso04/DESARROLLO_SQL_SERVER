use BDPERSONAL
select * from ASISTENCIA where AÑO = 2016 and MES = 3 and CODIGO = '084206' 
select * from ASISTENCIAPROG where AÑO = 2016 and MES = 3 and CODIGO = '084206'

select * from ASISTENCIA where AÑO = 2016 and MES = 3 and CODIGO = '084206' and codact = 'D'
select COUNT(*) from ASISTENCIA where AÑO = 2016 and MES = 3 and CODIGO = '084206' and codact = 'Dm'
select COUNT(*) from ASISTENCIAPROG where AÑO = 2016 and MES = 3 and CODIGO = '084206' and codact = 'Dm'
 