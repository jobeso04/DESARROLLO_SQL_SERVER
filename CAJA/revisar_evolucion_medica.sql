use sigsalud
SELECT  DATALENGTH(DETALLE)  AS CONTAR_DETALLE, detalle, ID_EME_DET_WEB, CODIGO_PROFESIONAL, PROFESIONAL, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, CONVERT(VARCHAR(5), HORA) AS HORA, FECHA_HORA_REG, EMERGENCIA_ID, TIPO_PROCESO, ESTADO, PACIENTE  
      FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '17015426' AND TIPO_PROCESO = 'P01' ORDER BY FECHA_HORA_REG DESC
 
 
USE SIGSALUD
SELECT  DATALENGTH(DETALLE)  AS CONTAR_DETALLE, ID_EME_DET_WEB, emergencia_id, PROFESIONAL, detalle, estado  
FROM V_EMERGENCIA_DET_WEB where TIPO_PROCESO = 'P01'  and estado = '1' ORDER BY DATALENGTH(DETALLE) DESC

 select * from EMERGENCIA where EMERGENCIA_ID = '16020468'
 

delete from EMERGENCIA_DET_WEB where ID_EME_DET_WEB = '16038352'

 SELECT ID_EME_DET_WEB, CODIGO_PROFESIONAL, PROFESIONAL, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, CONVERT(VARCHAR(5), HORA) AS HORA, FECHA_HORA_REG, EMERGENCIA_ID,
    TIPO_PROCESO, ESTADO, PACIENTE, DATALENGTH(DETALLE)  AS CONTAR_DETALLE  
      FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '17015426' AND TIPO_PROCESO = 'P01' and estado = '1' ORDER BY FECHA_HORA_REG DESC

      
      
  SELECT ID_EME_DET_WEB, CODIGO_PROFESIONAL, PROFESIONAL, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, CONVERT(VARCHAR(5), HORA) AS HORA, FECHA_HORA_REG, EMERGENCIA_ID,
    TIPO_PROCESO, ESTADO, PACIENTE, DATALENGTH(DETALLE)  AS CONTAR_DETALLE, DETALLE, SUBSTRing(detalle,1,250) as MOSTRAR_DETALLE
      FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '17015426' AND TIPO_PROCESO = 'P01' and estado = '1' ORDER BY FECHA_HORA_REG DESC

      
      
      
update  EMERGENCIA_DET_WEB set detalle = 'Pcte varón 33 años con los siguientes problemas  1. Insuficiencia respiratoria en VM  2. Shock septico pp respiratorio  3. Neumonía severa + atelectasia  4. Secuela de TV;: Cuadriplejia + vejiga neurogénica    Pcte con soporte ventilatorio total, sedoanalgesia e inotropos  PA: 130/70 FC: 74 FR: 30 Sat: 96%  Piel: palidez 2+, frialdad general, llenado capilar igual a 2 ss, TCSC: No edemas AR: MV pasa ACP, no ruidos agregados, acoplado a VM, no sibilantes ni roncantes. ACV: RC ritmicos, regular intensidad, no soplos. Aun con infusion de NA. Abd: blando, depresible, no reaccion peritoneal. Neuro: Bajo sedoanalgesia.    BH + 1824  Diuresis 1865/24 hrs      Pcte con evolucion estacionaria, Dependiente de VM e inotrópicos en disminución . Pronostico reservado  No vomitos ni distension abdominal. No espasmo bronquial.   Pronóstico reservado por que la evolución natural de ester tipo de pacientes es complicaciones respiratorias      Plan:  Reevaluar por UCI  Mantener inotropicos, sedoanalgesia, VM  Control de AGA electrolitos    Rp  1. SNG Diet polimérica hiperproteica 1500 ml/1500 kcal    2. ClNa 9% 1000 cc + ClK 20% 1 amp => 75 cc/hora  3. Vancomicina 1 gr EV c/12 hrs  4. Meropenem 1 gr EV c/8 hrs  5. Fentanilo 1000 mg en ClNa 9% 100 cc => 8 cc/hora  6. Midazolam 100 mg en ClNa 9% 100 cc => 8 cc/hora  7. Noradrenalina 8 mg => 3cc/hora regulable   8. Hidrocortisona 100 mg c/8 hrs EV  9. Ranitidina 50 mg ev c/8 hrs  10. Metoclopramida 10 mg EV c/8 hrs  11. Enoxaparina 60 mg c/24 hrs sc  12. Bromuro de ipratroipo 03 puff c/2 hrs inh  13. VM A/C presion (parametros indicados por UCI  14. Gluconato de calcio 10% 1 amp ev c/8 hrs  15. CFV-BHE  16. N-acetilcisteina 600 mg c/8 horas x SNG        Pcte fue evaluado por UCI que optimiza parametros de VM e indica mantener iguales indicaciones., Indica priroidad IV para pase a uci    Se conversa con familiares. Refieren TVM reciente, hace 1 1/2 mes, hospitalizado en Arequipa hasta hace 3 sem con cx de colocacion de placa, con mejoria ya pudiendo movilizar extremidades pero aun no puede caminar.  Plan  Referencia    registro en TRAUMA SHOCK |   20:00: PM -   25/04/2017  BALANCE HIDRICO DE 12 HORAS | PESO: 70  Turno Ingreso Cantidad Egreso Cantidad BH Parcial  Via Oral 0 Diuresis 389   Parenteral 1500 Deposiciones 0  Tratamiento 500 Drenajes 0  Transfusiones 0 Vomitos 0  Infusiones 300 Perd. Insens. 420  H2O Oxidación 175 Otros 0  Otros 0    Subtotal 2475 Subtotal 809 1666'  where ID_EME_DET_WEB = '17043258'
update  EMERGENCIA_DET_WEB set detalle = 'Paciente mujer de 72 años con los problemas.  1. D&C muerte cebral.  2.-SINDROME POST RCP  3./ Insuficiencia respiratoria tipoI, IV  3. SICA STNE CARA ANTERO SEPTAL  4- SEPSIS D/C PP GASTRONINTESTINA: GECA D/C ITU  4. azoemia>  IRA PRE-RENAL   5. - DM2 CON MANIFESTACIONES TARDIAS> nefropatia diabetica, gastropatia diabetica,  6./BLOQUEO COMPLETO DE RAMA DERECHA.    s./ paciente no responde interrogatorio. enfemerria reporta fiebre     0./ AL EXAMEN: MEG MEH REN   Pa 163&91  FC 101, SAt 97% fiO2 30%, FR 17, en ventilador mecanico  Presios antrolada  PEE 05, FR 17, Fio2> 30%  PIEL CALIENTE, ampotacion suopracondilea bilateral.  TYP: MV PASA EN ACP   CV: RC RITMICOS Y REGULARES , BAJOS EN INTENSIDAD, no soplos  ABD, B/D NO VCM RHA +  Neurologico > EG AO 1 rv t, rm 2, . PUPILAS DILATADAS 4mm. no reactivas, no reflejo corneal,  desviacion de la mirada ahacia sus pies, no rigidez de nuca,     paciente con signos de muerte cerebral, en ventilador mecanico, con los diagnosticos antes citados, con elvolucion estacionaria, mal proniostico en estera de  referecia.' where ID_EME_DET_WEB = '17020286'
update  EMERGENCIA_DET_WEB set detalle = 'RESULTADOS:  RX TORAX: MAYOR INFILTRADO PARENQUIMAL HT IZQ,  CON RESPECTO AL INGRESO  ELECTROLITOS NA 151;   CR 1.7 (CON DISMINUCION CON RESPECTO AL INGRESO)  TP ALGO PROLONGADO (SUSPENDER ENOXAPARINA)  DIURESIS 300CC/4 HORAS --> 75CC/H  PLAN  SE SUSPENDE ENOXAPARINA  MANTENER RESTO IDEM INDICACIONES  SE HOSPITALIZA   RP.' where ID_EME_DET_WEB = '16079271'
delete from EMERGENCIA_DET_WEB where ID_EME_DET_WEB = '16038352'
delete from EMERGENCIA_DET_WEB where ID_EME_DET_WEB = '16038352'
delete from EMERGENCIA_DET_WEB where ID_EME_DET_WEB = '17020629'
delete from EMERGENCIA_DET_WEB where ID_EME_DET_WEB in ('16125698', '16125699', '16125700', '16125701', '16125702', '16125703', '16125704', '16125705', '16125706',
'16125707', '16125708', '16125709', '16125710', '16125711', '16125712', '16125713', '16125714', '16125715', '16125716', '16125717', '16125718', '16125719', '16125720',
'16125721', '16125722', '16125723', '16125724', '16125725', '16125726', '17046633', '17046642', '17046658', '17046679', '17046614', '17046626', '17046629', '15000145',
'15071174', '15071960', '15053429', '17041877', '17046064', '17046017', '17022501', '17014339', '16132866', '16132867', '16132820', '16028136', '16028132', '16028109', '16025393',
'15060428', '15060597', '15062122', '15052618', '15052906', '15052943', '15035807', '15037159', '15038872', '15038938', '15022223', '15022267', '15022196', '16023990',
'16015455', '16014670', '17019024', '17019153', '15053078', '15053107', '15053187', '15053596', '15048029', '15047465', '15047473', '15046417', '15046484', '15046448', '15070149',
'15040852', '15040793', '15040697', '15042052', '15042025', '15074019', '15073970', '15071476', '15071243', '15054817', '15054772', '15055093', '15056388', '15056483', '15056965',
'15065874', '15070038', '15070130', '15070202', '15047480', '15047373', '15047318','15047441', '16017019', '16016801', '17017909', '17017825', '17017828', '17017994', '17018048',
'17018027', '15058294', '15058298', '15058309', '15058284', '15056400', '15056343', '15056239', '15056260', '15056315', '15057034', '15056956', '15055217', '15054036', '16124435')

delete from EMERGENCIA_DET_WEB where TIPO_PROCESO = 'P01'  and estado = '0'
delete from EMERGENCIA_DET_WEB where TIPO_PROCESO = 'P02'  and estado = '0'



  SELECT ID_EME_DET_WEB, CODIGO_PROFESIONAL, PROFESIONAL, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, CONVERT(VARCHAR(5), HORA) AS HORA, FECHA_HORA_REG, EMERGENCIA_ID, substring(DETALLE,1,250) as mostrar_detalle, substring(DETALLE,1,250) + ' ' + substring(DETALLE,251,250) 
     + ' ' + substring(DETALLE,502,250) AS DETALLE, TIPO_PROCESO, ESTADO, PACIENTE  FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = ?lidemergencia AND TIPO_PROCESO = 'P01' ORDER BY FECHA_HORA_REG DESC














      
      
      select * from EMERGENCIA_DET_WEB where detalle like 'RESULTADOS:  RX TORAX: MAYOR INFILTRADO PARENQUIMAL HT IZQ%'
