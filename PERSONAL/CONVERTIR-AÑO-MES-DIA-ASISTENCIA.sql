USE BDPERSONAL
SELECT CONVERT(DATETIME,CONVERT(VARCHAR(4), A�O) + '-' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), MES))),2)  + '-' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2), 101) 
AS FECHA_TOTAL FROM ASISTENCIA 


SELECT * FROM RELOGDIGI
