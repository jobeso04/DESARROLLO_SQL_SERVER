USE SIGSALUD

SELECT ESTADO, CITA_ID, FECHA, CASE WHEN TURNO_CONSULTA = 'M' THEN 'MA�ANA' WHEN TURNO_CONSULTA = 'T' THEN 'TARDE' WHEN TURNO_CONSULTA = 'I' THEN 'INTERMEDIA' 
  ELSE 'NO DEFINIDO' END AS TURNOS, HORA, NUMERO, NOMBRE, HISTORIA, NOMBRE_CONSULTORIO, NOMBRE_MEDICO, FECHA_OTORGA, HORA_OTORGA, FECHA_PAGO, PAGOID,
               SEGURO, NOMBRE_SEGURO, USUARIO, PACIENTE FROM [SIGSALUD].[dbo].[V_CITA] WHERE NOMBRE LIKE '%' + 'CASIMIRO MARRO' + '%' ORDER BY FECHA DESC
               

SELECT DX, UPPER(DX_DES) DESCRIPCION  FROM ATENCIOND WHERE ID_CITA = '160105545'

SELECT * FROM V_ATENCIOND WHERE CITA_ID = '160105545'
               
SELECT NUMERO, TOTAL FROM V_PAGOC WHERE PAGOID = '16056280'



SELECT nro_atencion AS NRO, fecha_atencion AS TOTAL FROM V_ATENCION_SEGURO WHERE CITA_ID = '160105545'

SELECT * FROM ATENCION_SEGURO ORDER BY FECHA_ATENCION DESC

SELECT ' FUA NRO : ' + nro_atencion + '  --- CON FECHA ATENCION : ' + CONVERT(VARCHAR(10), fecha_atencion, 103) AS RESULTADO FROM V_ATENCION_SEGURO WHERE CITA_ID = '160105545'
UNION ALL
SELECT ' BOLETA NRO : ' + NUMERO + '  --- CON TOTAL : ' + CONVERT(VARCHAR(10), TOTAL) AS RESULTADO FROM V_PAGOC  WHERE ORDENID = '160066370'



SELECT  NUMERO, TOTAL FROM PAGOC WHERE ORDENID = '160066370'
SELECT  NUMERO, TOTAL FROM V_PAGOC WHERE ORDENID = '160066370'


  select HOSPITALIZACION_ID, PROCEDENCIA, FECHA1, FECHA3, HISTORIA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, CONYUGE_NOMBRE, Expr1 as seguro, Expr3 as medico, Expr4 as diagnostico
   from [SIGSALUD].[dbo].[V_HOSPITALIZACION] where NOMBRES like 'casimiro marro%'
   
   SELECT ESTADO, ORDENID, FECHA, HORA, HISTORIA, NOMBRE, TOTAL, SEGURO, NOMBRE_MEDICO, NOMBRE_CONSULTORIO, ORIGEN, RECETA
   FROM V_ORDENC WHERE NOMBRE LIKE 'OBESO CAMO%' ORDER BY FECHA DESC
   
   SELECT UPPER(NOMBRE) AS NOMBRE, UPPER(PRESENTACION) PRESENTACION, CANTIDAD, PRECIO, SUBTOTAL  FROM V_ORDEND WHERE ORDENID = '1716012252'
   
   
   
SELECT ESTADO FROM V_ORDENC GROUP BY ESTADO 

SELECT ESTADO FROM ORDENC GROUP BY ESTADO 

0 - anulado
1-proforma
3-pagado

SELECT *  FROM ORDENC where ESTADO = '2'
SELECT *  FROM ORDENC where ESTADO = '0'

SELECT *  FROM ORDENC where ESTADO = '6' order by FECHA desc



SELECT ESTADO, * FROM ORDENC 


select