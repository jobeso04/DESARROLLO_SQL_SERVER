USE BDPERSONAL

SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'pillaca%'

SELECT * FROM MAESTRO WHERE CODIGO = '084371'

select * from ASISTENCIA where CODIGO = '084371' and MES = '12' and AÑO = '2015'

select * from ASISTENCIA where CODIGO = '084371' and MES = '11' and AÑO = '2015'

select * from dbo.ServicioDepartUnidad where IdServDepartUnid = 74

select * from dbo.ServicioDepartUnidad where Nombre like '%NEONATOLOGIA%'


select * from dbo.ServicioDepartUnidad where IdServDepartUnid = 71