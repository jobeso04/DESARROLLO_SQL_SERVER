select COUNT(*) from cita
1185921
select COUNT(*) from paciente
273685

select COUNT(*) from bitacora
2307874

select COUNT(*) from PAGOC
1514529

select COUNT(*) from PAGOd
2605603


select COUNT(*) from EMERGENCIA
432432

select COUNT(*) from ORDENC
1022946

select COUNT(*) from ORDENd--------
3412212


select COUNT(*) from EMERGENCIA_DET_WEB
250704

select COUNT(*) from ATENCIOND
880355


select COUNT(*) from   dbo.INGRESOD
12327

select COUNT(*) from  kardex

3186176



SELECT * FROM RESULTADO ORDER BY CONVERT(INT, REGISTROS) DESC

USE BDPERSONAL

select COUNT(*) from  ASISTENCIA

USE TRAMITE
SELECT sum(CONVERT(INT, rowcnt)) AS REGISTROS
 FROM sys.sysindexes
WHERE indid=1 group by CONVERT(INT, rowcnt)
ORDER BY CONVERT(INT, rowcnt) DESC






