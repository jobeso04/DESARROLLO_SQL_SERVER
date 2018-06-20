USE SIGSALUD
SELECT * FROM CONSULTORIO where NOMBRE like 'gineco%'
SELECT * FROM CONSULTORIO where CONSULTORIO like '1%' and TIPO = 'C' order by NOMBRE asc
SELECT * FROM CONSULTORIO where CONSULTORIO like '2%' and TIPO = 'C' order by NOMBRE asc
SELECT * FROM CONSULTORIO where CONSULTORIO like '4%' and TIPO = 'C' order by NOMBRE asc

select * from consultorio_parametro where consultorio in ('4041', '4043') and TURNO_CONSULTA in ('M', 'T')
select * from consultorio_parametro where consultorio in ('4041', '4043') and TURNO_CONSULTA in ('M', 'T')

/* ginecologia */
update consultorio_parametro set horario_de = '08:00', HORARIO_A = '12:00',
  ATENCIONES_DIA = 20, CITADOS_N = '30', tiempo_n = '10', tiempo_c = '10', TIEMPO_P = '10', PRECIO_C = 10, PRECIO_N = 10    where consultorio in ('4041', '4043') and TURNO_CONSULTA in ('M')
update consultorio_parametro set horario_de = '14:00', HORARIO_A = '18:00',
  ATENCIONES_DIA = 20, CITADOS_N = '30', tiempo_n = '10', tiempo_c = '10', TIEMPO_P = '10', PRECIO_C = 10, PRECIO_N = 10    where consultorio in ('4041', '4043') and TURNO_CONSULTA in ('T')

/* MEDICINA */
update consultorio_parametro set horario_de = '08:00', HORARIO_A = '12:00',
  ATENCIONES_DIA = 20, CITADOS_N = '30', tiempo_n = '10', tiempo_c = '10', TIEMPO_P = '10', PRECIO_C = 10, PRECIO_N = 10    
  where consultorio in ('1014', '1026', '1017', '1020', '1018', '1016', '1021', '1095', '1030', '1011', '1012', '1022', '1013', '1024',
  '1015', '1098', '1019')  and TURNO_CONSULTA in ('M')
update consultorio_parametro set horario_de = '14:00', HORARIO_A = '18:00',
  ATENCIONES_DIA = 20, CITADOS_N = '30', tiempo_n = '10', tiempo_c = '10', TIEMPO_P = '10', PRECIO_C = 10, PRECIO_N = 10    
  where consultorio in ('1014', '1026', '1017', '1020', '1018', '1016', '1021', '1095', '1030', '1011', '1012', '1022', '1013', '1024',
  '1015', '1098', '1019') and TURNO_CONSULTA in ('T')
UPDATE CONSULTORIO SET NOMBRE = 'MEDICINA FISICA Y REHABILITACION 1 ' WHERE CONSULTORIO = '1027'
UPDATE CONSULTORIO SET NOMBRE = 'MEDICINA FISICA Y REHABILITACION 2 ' WHERE CONSULTORIO = '1034'
UPDATE CONSULTORIO SET TIPO = '9'  WHERE CONSULTORIO IN ('1026', '1025', '1018')
UPDATE CONSULTORIO SET NOMBRE = 'INFECTOLOGIA 1' WHERE CONSULTORIO = '1095'
UPDATE CONSULTORIO SET NOMBRE = 'INFECTOLOGIA 2' WHERE CONSULTORIO = '1030'



/* CIRUGIA - PEDIATRICA - TRAUMA */
update consultorio_parametro set horario_de = '08:00', HORARIO_A = '12:00',
  ATENCIONES_DIA = 20, CITADOS_N = '30', tiempo_n = '10', tiempo_c = '10', TIEMPO_P = '10', PRECIO_C = 10, PRECIO_N = 10    
  where consultorio in ('2026', '2022', '2029') and TURNO_CONSULTA in ('M')
 
update consultorio_parametro set horario_de = '14:00', HORARIO_A = '18:00',
  ATENCIONES_DIA = 20, CITADOS_N = '30', tiempo_n = '10', tiempo_c = '10', TIEMPO_P = '10', PRECIO_C = 10, PRECIO_N = 10    
  where consultorio in ('2026', '2022', '2029') and TURNO_CONSULTA in ('T')

