use SIGSALUD


select * from ORDENC ORDER BY ORDENID DESC

select * from ORDENC where FECHA = CONVERT(datetime, '2018-03-14', 101) and USUARIO = 'YYACTAYO'  AND FECHA_PROCESO IS NOT NULL 
select * from ORDENC where FECHA = CONVERT(datetime, '2018-03-14', 101) and USUARIO = 'YYACTAYO'  AND FECHA_PROCESO IS NULL 


UPDATE ORDENC SET FECHA = CONVERT(datetime, '2018-03-15', 101), FECHA_PROCESO = CONVERT(datetime, '2018-03-15', 101)   
where FECHA = CONVERT(datetime, '2018-03-14', 101) and USUARIO = 'YYACTAYO' AND FECHA_PROCESO IS NOT NULL 
UPDATE ORDENC SET FECHA = CONVERT(datetime, '2018-03-15', 101)
where FECHA = CONVERT(datetime, '2018-03-14', 101) and USUARIO = 'YYACTAYO' AND FECHA_PROCESO IS NULL 


SELECT * FROM ORDEND WHERE ORDENID IN ('1718026769', '1718026771', '1718026773', '1718026777', '1718026778', '1718026779', '1718026781', '1718026784', '1718026786', '1718026792', '1718026793')

SELECT * FROM KARDEX  
WHERE IDTRANSACCION IN ('1718026769', '1718026771', '1718026773', '1718026777', '1718026778', '1718026779', '1718026781', '1718026784', '1718026786', '1718026792', '1718026793')

UPDATE ORDENC SET FECHA = CONVERT(datetime, '2018-03-15', 101), FECHA_PROCESO = CONVERT(datetime, '2018-03-15', 101)   
where FECHA = CONVERT(datetime, '2018-03-14', 101) and USUARIO = 'YYACTAYO' AND FECHA_PROCESO IS NOT NULL 
UPDATE ORDENC SET FECHA = CONVERT(datetime, '2018-03-15', 101)
where FECHA = CONVERT(datetime, '2018-03-14', 101) and USUARIO = 'YYACTAYO' AND FECHA_PROCESO IS NULL 

SELECT * FROM ORDENC WHERE FECHA = CONVERT(datetime, '2018-03-15', 101) AND USUARIO = 'YYACTAYO' AND ALMACEN = 'F'

SELECT * FROM ORDEND WHERE ORDENID IN ('1718026796', '1718026800', '1718026804', '1718026805', '1718026809', '1718026810', '1718026811', '1718026812', '1718026813', '1718026816',
'1718026817')
