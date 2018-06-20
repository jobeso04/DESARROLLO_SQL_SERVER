/* select * from v_EMERGENCIA_DET_WEB where EMERGENCIA_ID = '16025541'
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = '16025541' */



SELECT     EDW.ID_EME_DET_WEB, MED.MEDICO AS CODIGO_PROFESIONAL, MED.ABREVIATURA + '. ' + MED.NOMBRE AS PROFESIONAL, CASE WHEN UW.FOTO != '' OR
                      UW.FOTO != NULL THEN UW.FOTO ELSE UW.SEXO + '/' + MED.ABREVIATURA + '.jpg' END AS FOTO, EDW.FECHA, EDW.HORA, EDW.FECHA_HORA_REG, 
                      EDW.EMERGENCIA_ID, EDW.DETALLE, EPE.DESCRIPCION AS PROCEDIMIENTO, 
                      CASE WHEN EPE.TIPO_HIDRICO = 'I' THEN 'INGRESO' WHEN EPE.TIPO_HIDRICO = 'E' THEN 'EGRESO' END AS TIPO_HIDRICO, EDW.TEMP, RTRIM(CONVERT(CHAR, 
                      EDW.PAS)) + '/' + RTRIM(CONVERT(CHAR, EDW.PAD)) AS PA, EDW.FC, EDW.FR, EDW.SAT_OX, EDW.PESO, ELW.DESCRIPCION AS LUGAR, EDW.TIPO_PROCESO, 
                      EDW.ESTADO, EDW.OBSERVACION_ESTADO, EDW.PACIENTE, EDW.VIA_ORAL, EDW.PARENTERAL, EDW.TRATAMIENTO, EDW.TRANSFUSIONES, EDW.INFUSIONES, 
                      EDW.H2O, EDW.OTROS_I, (EDW.VIA_ORAL + EDW.PARENTERAL + EDW.TRATAMIENTO + EDW.TRANSFUSIONES + EDW.INFUSIONES + EDW.H2O + EDW.OTROS_I) 
                      AS SUBTOTAL_I, EDW.DIURESIS, EDW.DEPOSICIONES, EDW.DRENAJES, EDW.VOMITOS, EDW.PERD_INSENS, EDW.OTROS_E, 
                      (EDW.DIURESIS + EDW.DEPOSICIONES + EDW.DRENAJES + EDW.VOMITOS + EDW.PERD_INSENS + EDW.OTROS_E) AS SUBTOTAL_E, 
                      (EDW.VIA_ORAL + EDW.PARENTERAL + EDW.TRATAMIENTO + EDW.TRANSFUSIONES + EDW.INFUSIONES + EDW.H2O + EDW.OTROS_I) 
                      - (EDW.DIURESIS + EDW.DEPOSICIONES + EDW.DRENAJES + EDW.VOMITOS + EDW.PERD_INSENS + EDW.OTROS_E) AS BH_PARCIAL, 
                      CASE EDW.TURNO WHEN 'D' THEN 'Diurno' WHEN 'N' THEN 'Nocturno' END AS TURNO, EDW.NRO_HORAS, EM.ESTADO AS ESTADO_EMERGENCIA_ID, 
                      MED2.ABREVIATURA + ' ' + MED2.NOMBRE AS AHORA_PROFESIONAL, CON.NOMBRE AS ANTES_CONSUL, CON2.NOMBRE AS AHORA_CONSUL
FROM         dbo.EMERGENCIA_DET_WEB AS EDW INNER JOIN
                      dbo.MEDICO AS MED ON MED.MEDICO = EDW.PROFESIONAL INNER JOIN
                      dbo.USUARIO_WEB AS UW ON MED.DNI = UW.DNI INNER JOIN
                      dbo.EMERGENCIA_LUGAR_WEB AS ELW ON EDW.LUGAR = ELW.LUGAR LEFT OUTER JOIN
                      dbo.EMERGENCIA_PROCE_ENF AS EPE ON EDW.PROCEDIMIENTO = EPE.CODIGO INNER JOIN
                      EMERGENCIA AS EM ON EDW.EMERGENCIA_ID = EM.EMERGENCIA_ID LEFT JOIN
                      MEDICO AS MED2 ON MED2.MEDICO = EDW.AHORA_PROFESIONAL LEFT JOIN
                      CONSULTORIO AS CON ON EDW.ANTES_CONSULT = CON.CONSULTORIO LEFT JOIN
                      CONSULTORIO AS CON2 ON EDW.AHORA_CONSULT = CON2.CONSULTORIO
UNION ALL
SELECT     OW.ID_ORDEN_EXAMEN AS ID_EME_DET_WEB, OW.MEDICO AS CODIGO_PROFESIONAL, MED.ABREVIATURA + '. ' + MED.NOMBRE AS PROFESIONAL, 
                      CASE WHEN UW.FOTO != '' OR
                      UW.FOTO != NULL THEN UW.FOTO ELSE UW.SEXO + '/' + MED.ABREVIATURA + '.jpg' END AS FOTO, OW.FECHA, OW.HORA, NULL AS FECHA_HORA_REG, 
                      OW.ID_ATENCION AS EMERGENCIA_ID, NULL AS DETALLE, NULL AS PROCEDIMIENTO, NULL AS TIPO_HIDRICO, NULL AS TEMP, NULL AS PA, NULL AS FC, NULL 
                      AS FR, NULL AS SAT_OX, NULL AS PESO, OW.AREA AS LUGAR, 'EXA' AS TIPO_PROCESO, OW.ESTADO, NULL AS OBSERVACION_ESTADO, NULL AS PACIENTE, NULL 
                      AS VIA_ORAL, NULL AS PARENTERAL, NULL AS TRATAMIENTO, NULL AS TRANSFUSIONES, NULL AS INFUSIONES, NULL AS H2O, NULL AS OTROS_I, NULL 
                      AS SUBTOTAL_I, NULL AS DIURESIS, NULL AS DEPOSICIONES, NULL AS DRENAJES, NULL AS VOMITOS, NULL AS PERD_INSENS, NULL AS OTROS_E, NULL 
                      AS SUBTOTAL_E, NULL AS BH_PARCIAL, NULL AS TURNO, NULL AS NRO_HORAS, NULL AS ESTADO_EMERGENCIA_ID, NULL AS AHORA_PROFESIONAL, NULL 
                      AS ANTES_CONSUL, NULL AS AHORA_CONSUL
FROM         ORDEN_EXAMEN_WEB OW INNER JOIN
                      MEDICO MED ON OW.MEDICO = MED.MEDICO INNER JOIN
                      USUARIO_WEB UW ON MED.DNI = UW.DNI
                      
                      
                      