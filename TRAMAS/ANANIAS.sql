USE SIGSALUD


SELECT * FROM ORIGEN_1
ALTER TABLE ORIGEN_1 ADD SERVICIO VARCHAR(20)


SELECT A.ORIGEN, B.UPS FROM ORIGEN_1 A LEFT JOIN [UPS-ORIGEN] B ON A.ORIGEN = B.ORIGEN
SELECT A.ORIGEN, B.UPS FROM ORIGEN_1 A LEFT JOIN [UPS-ORIGEN] B ON A.ORIGEN = B.ORIGEN ORDER BY B.UPS ASC

SELECT * FROM [UPS-ORIGEN]

SELECT * FROM dbo.HOSPITAL1

SELECT * FROM dbo.HOSPIRENAES


SELECT B.RENAES AS DESTINO FROM dbo.HOSPITAL1 A LEFT JOIN dbo.HOSPIRENAES B ON  A.HOSPITAL = B.HOSPI




SELECT * FROM [UPS-ORIGEN]

SELECT A.SERVI, B.UPS FROM DESTI1 A LEFT JOIN [UPS-ORIGEN] B ON A.SERVI = B.ORIGEN

SELECT A.SERVI, B.UPS FROM DESTI1 A LEFT JOIN [UPS-ORIGEN] B ON A.SERVI = B.ORIGEN ORDER BY UPS ASC

SELECT A.SERVI, B.UPS FROM DESTI1 A LEFT JOIN [UPS-ORIGEN] B ON A.SERVI = B.ORIGEN 




select * from DESTI1 
SELECT * FROM ORIGEN_1
select * from dbo.HOSPITAL1
select * from dbo.HOSPIRENAES
select * from [UPS-ORIGEN]

