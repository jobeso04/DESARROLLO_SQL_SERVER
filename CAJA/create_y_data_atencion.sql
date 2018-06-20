USE [SIGSALUD]
GO
/****** Object:  Table [dbo].[ATEN_MEDICA]    Script Date: 08/29/2017 17:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ATEN_MEDICA](
	[CPT] [varchar](25) NULL,
	[NOMBRE] [varchar](250) NULL,
	[INDICADOR] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0086', N'SESIÓN:  TANQUE HUBBARD (CADA 15 MINUTOS)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0087', N'SESIÓN:  PROCEDIMIENTO TERAPEÚTICO EN UNA O MÁS ZONAS, CADA UNO,  15 MINUTOS DE EJERCICIOS TERAPEÚTICOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0088', N'SESIÓN:  REEDUCACIÓN NEUROMUSCULAR DEL MOVIMIENTO, EQUILIBRIO, COORDINACIÓN, SENTIDO QUINESTÉSICO, POSTURA Y PROPIOCEPCIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0089', N'SESIÓN:  ENTRENAMIENTO DE LA MARCHA (INCLUYE SUBIR ESCALERAS)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0090', N'SESIÓN:  MASAJE, INCLUYENDO FROTAMIENTO, AMASAMIENTO, PERCUSIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0091', N'SESIÓN:  TÉCNICAS DE TERAPIA MANUAL (MOVILIZACIÓN, MANIPULACIÓN, DRENAJE LINFÁTICO MANUAL) UNA O MÁS REGIONES, CADA 15 MINUTOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0092', N'SESIÓN:  AJUSTE DE DIAPOSITIVOS ORTÓTICOS Y CAPACITACIÓN, EXTREMIDADES SUPERIORES Y/O INFERIORES CADA 15 MINUTOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0093', N'SESIÓN:  ACTIVIDADES TERAPEÚTICAS, CONTACTO DIRECTO (UNO A UNO) ENTRE EL PACIENTE Y LA PERSONA ENCARGADA (USO DE ACTIVIDADES DINÁMICAS PARA MEJORAR EL RENDIMIENTO FUNCIONAL) CADA 15 MINUTOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0094', N'SESIÓN:  ENTRENAMIENTO PARA EL MANEJO Y PROPULSIÓN DE SILLAS DE RUEDAS, CADA 15 MINUTOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0095', N'SESIÓN:  PRUEBA O MEDICIÓN DEL RENDIMIENTO FÍSICO  (MUSCULOESQUELÉTICO, CAPACIDAD FUNCIONAL) CON INFORME ESCRITO, EN 40 MINUTOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0096', N'SESIÓN:  DESARROLLO DE LAS HABILIDADES COGNITIVAS PARA MEJORAR LA ARENCIÓN, MEMORIA, RESOLUCIÓN DE PROBLEMAS, INCLUYENDO LA CAPACITACIÓN DE COMPENSACIÓN Y/O ACTIVIDADES DE INTEGRACIÓN SENSORIAL, CONTACTO DIRECTO (UNO A UNO) ENTRE EL PACIENTE Y LA PER', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0097', N'SESIÓN:  PROCEDIMIENTOS TERAPEÚTICOS EN LA CAMA DEL PACIENTE, CADA 15 MINUTOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'96118', N'PRUEBAS NEUROPSICOLÓGICAS (P. EJ. BATERÍA NEUROSICOLÓGICA HALSTEAD-REITAN, ESCALAS DE MEMORIA DE WESCHLER Y PRUEBA DE CARTAS DE WISCONSIN)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90801', N'ENTREVISTA PSIQUIATRICA DE DIAGNÓSTICO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'62310', N'INYECCIÓN, ÚNICA (NO MEDIANTE CATÉTER INSTALADO), SIN INCLUIR SUSTANCIAS NEUROLÍTICAS, CON O SIN CONTRASTE (SEA PARA LOCALIZACIÓN O EPIDUROGRAFÍA), DE SUSTANCIAS DIAGNÓSTICAS O TERAPÉUTICAS (INCLUYENDO ANESTÉSICOS, OPIOIDES, ESTEROIDES, OTRAS SOLUCIO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'62318', N'INYECCIÓN, INCLUYENDO COLOCACIÓN DE CATÉTER, INFUSIÓN CONTÍNUA O BOLOS INTERMITENTES, SIN INCLUIR SUSTANCIAS NEUROLÍTICAS, CON O SIN CONTRASTE (SEA PARA LOCALIZACIÓN O PARA EPIDUROGRAFÍA), DE SUSTANCIAS DIAGNÓSTICAS O TERAPÉUTICAS (INCLUYENDO ANESTÉS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90935', N'PRIMERA SESIÓN DE HEMODIÁLISIS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90937', N'HEMODIÁLISIS (2DA. SESIÓN)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90945', N'HEMOFILTRACIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90947', N'PROCEDIMIENTO DE DIÁLISIS DISTINTO A LA HEMODIÁLISIS (P. EJ., PERITONEAL, HEMOFILTRACIÓN), QUE REQUIERE EVALUACIONES REPETIDAS, CON O SIN REVISIÓN SUBSTANCIAL DE LA PRESCRIPCIÓN DE DIÁLISIS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90950', N'HEMODIAFILTRACIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90951', N'DIÁLISIS PERITONEAL INTERMITENTE', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90952', N'DIÁLISIS PERITONEAL CRÓNICA AMBULATORIA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90780', N'INFUSIÓN INTRAVENOSA DE TERAPIA O DIAGNÓSTICO, ADMINISTRADA POR EL MÉDICO O BAJO SU SUPERVISIÓNDIRECTA; HASTA UNA HORA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'90781', N'INFUSIÓN INTRAVENOSA DE TERAPIA O DIAGNÓSTICO, ADMINISTRADA POR EL MÉDICO O BAJO SU SUPERVISIÓN DIRECTA; CADA HORA ADICIONAL, HASTA OCHO (8) HORAS (ANOTAR SEPARADAMENTE ADEMÁS DEL CÓDIGO PARA EL PROCEDIMIENTO PRIMARIO)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95955', N'ELECTROENCEFALOGRAMA (EEG) DURANTE LA CIRUGÍA NO INTRACRANEAL (P. EJ., CIRUGÍA DE LAS CARÓTIDAS)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95956', N'CONTROL PARA LA UBICACIÓN DE FOCO CEREBRAL DE CONVULSIONES, POR CABLE O RADIO, TELEMETRÍA DE 16 O MÁSCANALES, REGISTRO ELECTROENCEFALOGRÁFICO (EEG) Y SU INTERPRETACIÓN, CADA 24 HORAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'96110', N'PRUEBAS DE DESARROLLO LIMITADAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95831', N'PRUEBAS MUSCULARES, MANUALES (PROCEDIMIENTO SEPARADO) CON REPORTE; EXTREMIDADES (EXCEPTO MANOS) O TRONCO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95832', N'MANO, CON O SIN COMPARACIÓN CON EL LADO NORMAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95833', N'EVALUACIÓN TOTAL DEL CUERPO, EXCEPTO MANOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'91122', N'MANOMETRÍA ANORECTAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'91135', N'TRATAMIENTO DE VÁRICES GÁSTRICAS CON CIANOACRILATO, CON FIBROSCOPIO C/S VIDEOCÁMARA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'91142', N'POLIPECTOMÍA ALTA CON VIDEOENDOSCOPIO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'91154', N'HEMOSTASIA ENDOSCÓPICA ALTA CON INYECTOTERAPIA C/S VIDEO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'91158', N'HEMOSTASIA ENDOSCÓPICA ALTA CON PROBETA CALIENTE', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0078', N'SESIÓN:  BAÑOS DE PARAFINA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0079', N'SESIÓN:  COMPRESAS HÚMEDAS Y CALIENTES', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0080', N'SESIÓN:  ESTIMULACIÓN ELÉCTRICA (SIN ATENDER AL PACIENTE)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0081', N'SESIÓN:  APLICACIÓN DE UNA O MÁS ZONAS, DE ESTIMULACIÓN ELÉCTRICA MANUAL (CADA 15 MINUTOS)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0082', N'SESIÓN:  INFRARROJOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0083', N'SESIÓN:  HIDROTERAPIA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0084', N'SESIÓN:  ULTRASONIDO (CADA 15 MINUTOS)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'R0085', N'SESIÓN:  IONTOFORESIS (CADA 15 MINUTOS)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99208', N'ATENCIÓN EN PLANIFICACIÓN FAMILIAR', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99204', N'CONSULTA AMBULATORIA PROLONGADA, II, III NIVEL DE ATENCIÓN (**)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99241', N'INTERCONSULTAS (CONSULTA ESPECIALIZADA), BRINDADA EN CONSULTORIO EXTERNO, HOSPITALIZACIÓN O EMERGENCIA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99403', N'CONSEJERÍA NUTRICIONAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99342', N'VISITA MÉDICA DOMICILIARIA (**)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99344', N'VISITA FAMILIAR INTEGRAL (**)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99366', N'REUNIÓN DEL O LOS MÉDICOS TRATANTES CON EL EQUIPO INTERDISCIPLINARIO DE PROFESIONALES DE LA SALUD (PARTICIPACIÓN DE PROFESIONAL NO MÉDICOS DE LA SALUD) , FRENTE A FRENTE CON EL PACIENTE Y/O FAMILIA. LA REUNIÓN TENDRÁ UNA DURACIÓN DE 30 MINUTOS O MÁS.', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99367', N'JUNTA MÉDICA DEL O LOS MÉDICOS TRATANTES CON EL EQUIPO INTERDISCIPLINARIO DE PROFESIONALES DE LA SALUD, (PARTICIPACIÓN DE MÉDICOS) SIN LA PRESENCIA DEL PACIENTE Y/O FAMILIA. LA REUNIÓN TENDRÁ UNA DURACIÓN DE 30 MINUTOS O MÁS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'9099A', N'HEMOFILTRACIÓN CON UNA SOLA EVALUACIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'9099B', N'HEMOFILTRACIÓN CON EVALUACIONES REPETIDAS EN 24 HORAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'9099C', N'HEMODIAFILTRACIÓN CON UNA SOLA EVALUACIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'9099D', N'HEMODIAFILTRACIÓN CON EVALUACIONES REPETIDAS EN 24 HORAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'9712401', N'MASOTERAPIA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99199', N'INFILTRACIONES INTRAARTICULARES', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99500', N'RIESGO QUIRURGICO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99214', N'CONSULTA AMBULATORIA PARA LA EVALUACIÓN Y MANEJO DE UN PACIENTE CONTINUADOR ESPECIALIZADA (**)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'99210', N'ATENCIÓN DE SERVICIO SOCIAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92572', N'PRUEBA DE PALABRAS ESPONDAICAS ALTERNADAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92573', N'PRUEBA DE LOMBARD', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92575', N'PRUEBA DE NIVEL DE AGUDEZA NEUROSENSORIAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92576', N'PRUEBA DE IDENTIFICACIÓN DE ORACIONES SINTÉTICAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92577', N'PRUEBA DE STENGER, HABLA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'56820', N'COLPOSCOPIA DE VULVA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'29200', N'APLICACIÓN DE VENDAJE HEMICUERPO SUPERIOR (INCLUYE TÓRAX, ESPALDA BAJA, HOMBRO, CODO, MUÑECA, MANO)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'29700', N'REMOCIÓN DE YESO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97001', N'REH/ EVALUACION DE FISIOTERAPIA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97010', N'TERAPIA FISICA A UNA O MAS AREAS; FRIO O CALOR LOCAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97026', N'APLICACIÓN DE RAYOS INFRARROJOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97028', N'APLICACIÓN DE LUZ ULTRAVIOLETA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97110', N'PROCEDIMIENTO TERAPÉUTICO PARA DESARROLLAR FUERZA Y RESISTENCIA AL EJERCICIO, ARCO DE MOVIMIENTO Y FLEXIBILIDAD', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97112', N'PROCEDIMIENTO TERAPÉUTICO PARA REEDUCACIÓN NEUROMUSCULAR DEL MOVIMIENTO, EQUILIBRIO, COORDINACIÓN, SENTIDO QUINESTÉSICO, POSTURA Y PROPIOCEPCIÓN.', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97113', N'SESION: HIDROTERAPIA: TANQUE DE WHIRLPOOL +  PROCEDIMIENTO TERAPÉUTICO (QUINESIOTERAPIA)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97125', N'TÉCNICAS DE TERAPIA MANUAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97139', N'SESIÓN: PROCEDIMIENTO TERAPÉUTICO (QUINESIOTERAPIA) + AGENTES FÍSICOS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97532', N'DESARROLLO DE HABILIDADES COGNITIVAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97535', N'TERAPIA OCUPACIONAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97597', N'CURACIÓN DE HERIDAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97770', N'TERAPIA DE APRENDIZAJE', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97780', N'SESIÓN:  ACUPUNTURA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'97799', N'PROCEDIMIENTO DE MEDICINA FÍSICA / REHABILITACIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'29058', N'APLICACIÓN DE YESO TÓRACO-BRAQUIAL (TIPO VELPEAU)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92002', N'SERVICIOS OFTALMOLÓGICOS: EXAMEN MÉDICO Y EVALUACIÓN MÉDICA, CON INICIO DE UN PROGRAMA DE DIAGNÓSTICO Y TRATAMIENTO; INTERMEDIOS, PACIENTE NUEVO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92568', N'PRUEBA DE REFLEJO ACÚSTICO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92569', N'PRUEBA DE DECAIMIENTO DEL REFLEJO ACÚSTICO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92571', N'PRUEBA DE HABLA FILTRADA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'43259', N'ENDOSCOPÍA GASTROINTESTINAL ALTA CON ULTRASONOGRAFÍA ENDOSCÓPICA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92541', N'PRUEBA DE NISTAGMO ESPONTÁNEO, INCLUYENDO EL NISTAGMO DE MIRADA Y DE FIJACIÓN, CON REGISTRO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92542', N'PRUEBA DE NISTAGMO DE POSICIÓN, MÍNIMO DE 4 POSICIONES, CON REGISTRO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92543', N'PRUEBA VESTIBULAR CALÓRICA, CADA IRRIGACIÓN (LA ESTIMULACIÓN BINAURAL, BITÉRMICA CONSTITUYE CUATRO PRUEBAS), CON REGISTRO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92544', N'PRUEBA DE NISTAGMO OPTOCINÉTICO, BIDIRECCIONAL, ESTIMULACIÓN DE LA FOSA O PERIFÉRICA, CON REGISTRO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92506', N'EVALUACIÓN DEL HABLA, LENGUAJE, VOZ, COMUNICACIÓN, PROCESAMIENTO AUDITIVO, Y/O REHABILITACIÓN DEL ESTADO AUDITIVO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92507', N'TERAPIA DEL LENGUAJE', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92531', N'NISTAGMO ESPONTÁNEO, INCLUYENDO LA MIRADA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'92532', N'NISTAGMO DE POSICIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'93227', N'REVISIÓN E INTERPRETACIÓN MÉDICAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'93230', N'CONTROL ELECTROCARDIOGRÁFICO DURANTE 24 HORAS POR REGISTRO CONTINUO DE LAS ONDAS ORIGINALES DEL ECG Y SU ALMACENAMIENTO SIN BARRIDO POR REGISTRO SOBREIMPUESTO, MEDIANTE UN DISPOSITIVO CAPAZ DE PRODUCIR UNA TIRA IMPRESA COMPLETA Y EN MINIATURA; INCLUY', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'93235', N'CONTROL ELECTROCARDIOGRÁFICO DURANTE 24 HORAS POR CONTROL COMPUTARIZADO CONTINUO Y REGISTRO NO CONTINUO, Y ANÁLISIS DE LOS DATOS EN TIEMPO REAL MEDIANTE UN DISPOSITIVO CAPAZ DE PRODUCIR UN TRAZADO DE TAMAÑO COMPLETO DE LAS ONDAS, QUE PODRÍA ESTAR ACT', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95860', N'ELECTROMIOGRAFÍA, UNA EXTREMIDAD', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95861', N'ELECTROMIOGRAFÍA DE AGUJA, DOS EXTREMIDADES CON O SIN ZONAS PARAESPINOSAS RELACIONADAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95863', N'ELECTROMIOGRAFÍA DE AGUJA, TRES EXTREMIDADES CON O SIN ZONAS PARAESPINOSAS RELACIONADAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95864', N'ELECTROMIOGRAFÍA DE AGUJA, CUATRO EXTREMIDADES CON O SIN ZONAS PARAESPINOSAS RELACIONADAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95867', N'ELECTROMIOGRAFÍA DE AGUJA, MÚSCULOS SURTIDOS POR LOS NERVIOS CRANEALS, UNILATERAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95868', N'ELECTROMIOGRAFÍA DE AGUJA, MÚSCULOS SURTIDOS POR LOS NERVIOS CRANEALES, BILATERAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95869', N'ELECTROMIOGRAFÍA DE AGUJA; MÚSCULOS TORÁCICOS PARAESPINALES', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95870', N'ESTUDIO LIMITADO DE MÚSCULOS EN UNA EXTREMIDAD O MÚSCULOS QUE NO PERTENECEN A UNA EXTREMIDAD (AXIALES) (UNILATERAL O BILATERAL), DIFERENTE DE MÚSCULOS INERVADOS POR NERVIOS TORÁCICOS, PARAESPINALES, CRANEALES, O ESFÍNTERES)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95872', N'ELECTROMIOGRAFÍA DE AGUJA CON ELECTRODO DE FIBRA ÚNICA, CON DETERMINACIÓN CUANTITATIVA DE FIBRILACIONES, BLOQUEO Y/O DENSIDAD DE FIBRAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95875', N'EJERCICIO DE EXTREMIDAD ISQUÉMICA CON ELECTROMIOGRAFÍA DE AGUJA, CON DETERMINACIÓN DE ÁCIDO LÁCTICO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95879', N'ELECTROGRAFIA: EVALUACION INTEGRAL DEL SISTEMA AUTÓNOMO', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95880', N'ELECTROGRAFIA: MONITORIZACION CON PEA', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95881', N'ELECTROGRAFIA: MONITORIZACION CON PESS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95882', N'ELECTROGRAFIA: MONITORIZACION CON PEV', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95883', N'ELECTROGRAFIA: REFLEJO PALPEBRAL', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95884', N'ELECTROGRAFIA: VC METODO DE COLISION', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95044', N'PRUEBAS CUTÁNEAS CON PARCHE (POR EXTRACTO)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95060', N'PRUEBA DE SENSIBILIDAD (CONJUNTIVAL, MUCOSA) (POR HORA)', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95065', N'PRUEBA DIRECTA DE MUCOSA NASAL DE SENSIBILIDAD PARA ALERGIAS', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'95070', N'PRUEBA DE BRONCOPROVOCACIÓN', NULL)
INSERT [dbo].[ATEN_MEDICA] ([CPT], [NOMBRE], [INDICADOR]) VALUES (N'1987', N'EVALUACIÓN PREANESTÉSICA', NULL)
