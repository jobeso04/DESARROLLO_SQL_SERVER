

SELECT * FROM RELOGDIGI WHERE Codigo = '7645049' ORDER BY Fecha DESC
SELECT * FROM MAESTRO WHERE DNI_ACTUAL = '7645049'
SELECT * FROM MAESTRO WHERE DNI_ACTUAL = '07645049'

SELECT * FROM MAESTRO WHERE DNI_ACTUAL LIKE '%5049'
SELECT * FROM MAESTRO WHERE DNI_ACTUAL = '9765049'
SELECT * FROM MAESTRO WHERE DNI_ACTUAL = '7645049'

SELECT * FROM MAESTRO WHERE DNI = '9765049'


SELECT * FROM MAESTRO WHERE DNI_ACTUAL = '7645049'

SELECT * FROM MAESTRO WHERE DNI_ACTUAL = '7645049'
SELECT CODIGO, DNI_ACTUAL, DNI_RELOG FROM MAESTRO WHERE DNI_ACTUAL = '07675049'
SELECT CODIGO, DNI_ACTUAL, DNI_RELOG FROM MAESTRO WHERE DNI_ACTUAL = '7645049'


select * into TMP_SOSA FROM RELOGDIGI WHERE Codigo = 7645049 AND FECHA BETWEEN CONVERT(DATETIME, '2016-01-01',101) AND CONVERT(DATETIME, '2016-01-31',101) ORDER BY Fecha DESC
UPDATE TMP_SOSA SET Codigo = 7675049 
select * from TMP_SOSA
declare @lid int = (SELECT max(idrelog) + 1 from relogdigi)
Select @lid

SELECT * FROM RELOGDIGI WHERE Codigo = '7645049' ORDER BY Fecha DESC

SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049 AND FECHA BETWEEN CONVERT(DATETIME, '2016-01-01',101) AND CONVERT(DATETIME, '2016-01-31',101) ORDER BY Fecha DESC

SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049 AND FECHA BETWEEN CONVERT(DATETIME, '2015-01-01',101) AND CONVERT(DATETIME, '2015-03-31',101) ORDER BY Fecha DESC

SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049 order by Fecha desc

enero-febrero-marzo 2015


SELECT * FROM RELOGDIGI  WHERE Codigo = 7675049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-03-01',101) AND CONVERT(DATETIME, '2015-03-31',101) order by Fecha desc
SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-03-01',101) AND CONVERT(DATETIME, '2015-03-31',101) order by Fecha desc



/* para enero-febrero - 2015 */
use bdpersonal
SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-01-01',101) AND CONVERT(DATETIME, '2015-02-28',101) order by Fecha desc
/* para marzo  2015 */
SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-03-01',101) AND CONVERT(DATETIME, '2015-03-31',101) order by Fecha desc
/* para enero 2016 */
SELECT * FROM RELOGDIGI  WHERE Codigo = 7645049  AND FECHA BETWEEN CONVERT(DATETIME, '2016-01-01',101) AND CONVERT(DATETIME, '2016-01-31',101) order by Fecha desc



use bdpersonal
update RELOGDIGI  set codigo = 7675049 WHERE Codigo = 7645049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-01-01',101) AND CONVERT(DATETIME, '2015-02-28',101)  
update RELOGDIGI  set codigo = 7675049 WHERE Codigo = 7645049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-03-01',101) AND CONVERT(DATETIME, '2015-03-31',101) 
update RELOGDIGI  set codigo = 7675049 WHERE Codigo = 7645049 AND FECHA BETWEEN CONVERT(DATETIME, '2016-01-01',101) AND CONVERT(DATETIME, '2016-01-31',101)  
delete from RELOGDIGI  WHERE Codigo = 7675049  AND FECHA BETWEEN CONVERT(DATETIME, '2015-12-01',101) AND CONVERT(DATETIME, '2015-12-31',101)
update RELOGDIGI  set codigo = 7675049 WHERE Codigo = 7645049 AND FECHA BETWEEN CONVERT(DATETIME, '2015-12-01',101) AND CONVERT(DATETIME, '2015-12-31',101)

