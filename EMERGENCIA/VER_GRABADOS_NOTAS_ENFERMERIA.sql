use SIGSALUD
go
select * from EMERGENCIA_DET_WEB order by FECHA_HORA_REG desc

SELECT MAX(ID_EME_DET_WEB) AS IDWEB FROM EMERGENCIA_DET_WEB


/********************/

EXEC SP_GUARDAR_NOTAS_ENFERMERIA ?,?,?,?,?,?
