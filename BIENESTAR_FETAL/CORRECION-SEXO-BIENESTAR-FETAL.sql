SELECT PACIENTE,NOMBRES,HISTORIA,RTRIM(HISTORIA) + ' - ' + (CASE WHEN SEXO = 'F' THEN 'FEMENINO' ELSE 'MASCULINO ' END) + ' - ' + NOMBRES  AS UNIDOS  FROM [SIGSALUD].[dbo].[PACIENTE]  


select * from EMERGENCIA where CONSULTORIO = '4060'  order by fecha desc


select A.EMERGENCIA_ID, A.FECHA, A.NOMBRES, A.SEXO AS SEXOENEMERGENCIA, B.SEXO AS SEXOENHISTORIA, B.USUARIO, B.FECHA_APERTURA, B.PACIENTE from EMERGENCIA A
LEFT JOIN PACIENTE B ON A.PACIENTE = B.PACIENTE  where A.SEXO = B.SEXO AND  A.CONSULTORIO = '4060' and A.SEXO = 'M' order by fecha desc


select A.EMERGENCIA_ID, A.FECHA, A.NOMBRES, A.SEXO AS SEXOENEMERGENCIA, B.SEXO AS SEXOENHISTORIA, B.USUARIO, B.FECHA_APERTURA, B.PACIENTE from EMERGENCIA A
LEFT JOIN PACIENTE B ON A.PACIENTE = B.PACIENTE  where A.SEXO <> B.SEXO AND  A.CONSULTORIO = '4060' and A.SEXO = 'M' order by fecha desc

update EMERGENCIA set SEXO = 'F' WHERE EMERGENCIA_ID IN (select A.EMERGENCIA_ID from EMERGENCIA A
LEFT JOIN PACIENTE B ON A.PACIENTE = B.PACIENTE  where A.SEXO <> B.SEXO AND  A.CONSULTORIO = '4060' and A.SEXO = 'M')




select * from PACIENTE where paciente = '2008056390'

FLORES ROQUE ALEXANDRA GEORGINA


select * from CONSULTORIO