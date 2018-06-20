/* CORRECIONES SEM - EGRESO */

USE SIGSALUD
SELECT * FROM dbo.SEMEGRESO

SELECT * FROM dbo.SEMEGRESO WHERE codcpt1 IN ('Z380')

UPDATE dbo.SEMEGRESO SET codcpt1 = '' WHERE codcpt1 LIKE 'Z38%'
UPDATE dbo.SEMEGRESO SET codcpt1 = '' WHERE codcpt1 LIKE 'Z37%'

SELECT NUMHC, COUNT(NUMHC) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY numhc 
SELECT NOMB, COUNT(NOMB) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY NOMB 
SELECT apell, COUNT(APELL) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY apell
SELECT DOC_IDEN, COUNT(DOC_IDEN) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY DOC_IDEN
SELECT SEXO, COUNT(SEXO) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY SEXO
SELECT edad, COUNT(edad) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY EDAD
SELECT TipoEdad, COUNT(TipoEdad) AS CANTIDAD  FROM dbo.SEMEGRESO GROUP BY TipoEdad
SELECT FECING, FECEGR, TOTALEST FROM dbo.SEMEGRESO ORDER BY CONVERT(DATETIME, FECING, 3)  ASC
SELECT UPS, COUNT(UPS) AS CANTI FROM dbo.SEMEGRESO GROUP BY UPS ORDER BY UPS ASC
SELECT CONDICION, COUNT(CONDICION) AS CANTI FROM dbo.SEMEGRESO GROUP BY CONDICION 
SELECT FINANCIA, COUNT(FINANCIA) AS CANTI FROM dbo.SEMEGRESO GROUP BY FINANCIA
SELECT codcpt1, COUNT(codcpt1) AS CANTI FROM dbo.SEMEGRESO WHERE codcpt1 LIKE 'Z38%'GROUP BY codcpt1
SELECT codcpt1, COUNT(codcpt1) AS CANTI FROM dbo.SEMEGRESO WHERE codcpt1 LIKE 'Z37%'GROUP BY codcpt1




SELECT CONDICIONEGRES FROM V_HOSPITALIZACION GROUP BY CONDICIONEGRES

SELECT Expr1 FROM V_HOSPITALIZACION GROUP BY Expr1



SELECT Expr1,
  CASE Expr1 WHEN 'CONSTRUYENDO PERU0' THEN '10'  WHEN 'CREDITO PACIENTE' THEN '01' WHEN 'ESSALUD' THEN '03' WHEN 'EXONERADO' THEN '11'  WHEN 'OTROS SEGUROS' THEN '01' WHEN 'PACIENTE PROGRAMAS' THEN '01' WHEN 'PAGANTE' THEN '01'  WHEN 'SANIDAD EP' THEN '07'  WHEN 'SANIDAD FAP' THEN '05' 
   WHEN 'SANIDAD PNP' THEN '08'  WHEN 'SEGURO PRIVADO' THEN '09' WHEN 'SEMISUBSIDIADO SISALUD' THEN '01' WHEN 'SIS SUBISIDIADO NRUS' THEN '02' WHEN 'SIS SUBSIDIADO' THEN '02' WHEN 'EXONERADO' THEN '11' WHEN 'SOAT' THEN '04' END as FINANCIA
    FROM V_HOSPITALIZACION WHERE FECHA3 BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) GROUP BY Expr1


SELECT * FROM SEMEGRESO WHERE hospitalizacion_id = '00037893'

  SELECT DX6 
   FROM V_HOSPITALIZACION WHERE FECHA3 BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) AND HOSPITALIZACION_ID = '00037893' and
    substring(DX6,1,1) between 'U'  and 'Y'

   SELECT DX5
     FROM V_HOSPITALIZACION WHERE FECHA3 BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) AND HOSPITALIZACION_ID = '00037893' and
       substring(DX5,1,1) between 'U'  and 'Y'



SELECT cemorb1 FROM SEMEGRESO WHERE hospitalizacion_id = '00037893'

update SEMEGRESO set cemorb1 = xxx WHERE hospitalizacion_id = '00037893'






SELECT *, DX5, DX6 FROM V_HOSPITALIZACION WHERE FECHA3 BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) 
AND HISTORIA = '0105763'




USE SIGSALUD
SELECT hospitalizacion_id, cemorb1, cemorb2 FROM dbo.SEMEGRESO WHERE cemorb1 <> ''

SELECT hospitalizacion_id, cemorb1, cemorb2 FROM dbo.SEMEGRESO WHERE cemorb2 <> ''


SELECT hospitalizacion_id, cemorb1, cemorb2 FROM dbo.SEMEGRESO WHERE cemorb1 = '' AND cemorb2 <> ''

UPDATE dbo.SEMEGRESO  SET cemorb1 = cemorb2, cemorb2 = '' WHERE cemorb1 = '' AND cemorb2 <> ''

UPDATE dbo.SEMEGRESO  SET cemorb1 = REPLACE(cemorb1,'.', '')
UPDATE dbo.SEMEGRESO  SET cemorb2 = REPLACE(cemorb2,'.', '')


SELECT * FROM 

 SELECT hospitalizacion_id, RTRIM(cemorb1) mor1 FROM SEMEGRESO WHERE cemorb1 <> ''
 

select * from SEEMCIE10 where codigo = 'V039'



SELECT hospitalizacion_id, RTRIM(cemorb1) mor1 FROM SEMEGRESO WHERE cemorb1 <> '' ORDER BY cemorb1 ASC

SELECT * FROM SEEMCIE10 WHERE codigo IN (SELECT CEMORB1 AS CODIGO  FROM dbo.SEMEGRESO WHERE cemorb1 <> '') ORDER BY codigo ASC


