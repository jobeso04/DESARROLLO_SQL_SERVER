use SIGSALUD
select * from emergencia WHERE EMERGENCIA_ID = '16041655'
SELECT * FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '16041655' ORDER BY FECHA_HORA_REG DESC


/* PARA MODFICIAR EVOLUCON MEDICA */
SELECT * FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '16041655' AND TIPO_PROCESO = 'P01' ORDER BY FECHA_HORA_REG DESC

  SELECT ID_EME_DET_WEB, CODIGO_PROFESIONAL, PROFESIONAL, FECHA, HORA, FECHA_HORA_REG, EMERGENCIA_ID, SUBSTRING(DETALLE,1,250) AS DETA, TIPO_PROCESO, ESTADO, PACIENTE
   FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '16041655' AND TIPO_PROCESO = 'P01' ORDER BY FECHA_HORA_REG DESC


/* PARA MODFICIAR NOTAS DE ENFERMERIA */
SELECT * FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '17011461' AND TIPO_PROCESO = 'P02' ORDER BY FECHA_HORA_REG DESC


/* PARA ASIGNAR HISTORIA A UN MEDICO  */
SELECT * FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '16041655' AND TIPO_PROCESO = 'P06' ORDER BY FECHA_HORA_REG DESC

SELECT * FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '16041655' AND TIPO_PROCESO = 'P06' ORDER BY FECHA_HORA_REG DESC


/* TRANSFERIR HISTORIA MEDICO */
SELECT * FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '16041655' AND TIPO_PROCESO = 'P08' ORDER BY FECHA_HORA_REG DESC

USE SIGSALUD
select * from  dbo.EMERGENCIA_TIPO_PROCESO_WEB



SELECT * FROM EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('17028571', '17028570', '17028569', '17028568', '17028567', '17028566', '17028565', '17028564', '17028563')

delete from EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('17028571', '17028570', '17028569', '17028568', '17028567', '17028566', '17028565', '17028564', '17028563')


SELECT * FROM EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('17028571', '17028570', '17028569', '17028568', '17028567', '17028566', '17028565', '17028564', '17028563')

SELECT * FROM EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('17028143', '17028139', '17028137', '17028135', '17028134', '17028562', '17028561', '17028560', '17028559',
'17028558', '17028557', '17028506', '17028501', '17028500', '17028499', '17028498', '17028497', '17028496', '17028495', '17028491', '17028490', '17028488',
'17028485', '17028482', '17028481', '17028480', '17028479', '17028475', '17028474', '17028473', '17028472', '17028471', '17028470', '17028469', '17028468', '17028467',
'17028466', '17028465', '17028464')



delete FROM EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('17028143', '17028139', '17028137', '17028135', '17028134', '17028562', '17028561', '17028560', '17028559',
'17028558', '17028557', '17028506', '17028501', '17028500', '17028499', '17028498', '17028497', '17028496', '17028495', '17028491', '17028490', '17028488',
'17028485', '17028482', '17028481', '17028480', '17028479', '17028475', '17028474', '17028473', '17028472', '17028471', '17028470', '17028469', '17028468', '17028467',
'17028466', '17028465', '17028464')


select * from EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('17028143', '17028139', '17028137', '17028135', '17028134', '17028562', '17028561', '17028560', '17028559',
'17028558', '17028557', '17028506', '17028501', '17028500', '17028499', '17028498', '17028497', '17028496', '17028495', '17028491', '17028490', '17028488',
'17028485', '17028482', '17028481', '17028480', '17028479', '17028475', '17028474', '17028473', '17028472', '17028471', '17028470', '17028469', '17028468', '17028467',
'17028466', '17028465', '17028464', '17028494')

