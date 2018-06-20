 USE SIGSALUD
  DECLARE @litem varchar(13) = '170232'
  DECLARE @lcnombreitem varchar(250) = 'cipro'
  declare @lfechainicio datetime = convert(datetime, '2016-01-01', 101)
  declare @lfechafin datetime = convert(datetime, '2016-01-31', 101)
  declare @lfechainicio2 VARCHAR(10) = '01/01/2016'
  declare @lfechafin2 VARCHAR(10) = '31/01/2016'
 
 
 INSERT INTO [SIGSALUD].[dbo].[TMP_ATM_PACIENTES]([FECHA_INICIO], [FECHA_FIN], [ORDENID], [ITEM], [NOMBRE], [PRESENTACION], [CANTIDAD], [PRECIO], [DESCUENTO], [IMPORTE], [NOMBRE_PACIENTE], [NOMBRE_MEDICO], [NOMBRE_CONSULTORIO], [TIPO_CONSULTORIO], FECHA, PACIENTE, MEDICO) 
  SELECT @lfechainicio2, @lfechafin2, ORDENID, A.ITEM, NOMBRE, PRESENTACION, B.CANTIDAD, B.PRECIO, DESCUENTO, B.CANTIDAD * B.PRECIO AS IMPORTE, NOMBRE_PACIENTE, NOMBRE_MEDICO, NOMBRE_CONSULTORIO, TIPO_CONSULTORIO, A.FECHA, PACIENTE, MEDICO FROM V_ORDEND A
  LEFT JOIN KARDEX B ON B.ITEM = @litem
   WHERE  B.IDTRANSACCION = A.ORDENID  AND A.ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE A.FECHA BETWEEN @lfechainicio  AND @lfechafin and ESTADO = '3')
       AND  A.TIPO_CONSULTORIO = 'H'  AND A.ESTADO = '3' AND A.ITEM = @litem   ORDER BY A.NOMBRE_PACIENTE  ASC
 
  INSERT INTO [SIGSALUD].[dbo].[TMP_ATM_PACIENTES]([FECHA_INICIO], [FECHA_FIN], [ORDENID], [ITEM], [NOMBRE], [PRESENTACION], [CANTIDAD], [PRECIO], [DESCUENTO], [IMPORTE], [NOMBRE_PACIENTE], [NOMBRE_MEDICO], [NOMBRE_CONSULTORIO], [TIPO_CONSULTORIO], FECHA, PACIENTE, MEDICO)
  SELECT @lfechainicio2, @lfechafin2, ORDENID, A.ITEM, NOMBRE, PRESENTACION, B.CANTIDAD, B.PRECIO, DESCUENTO, B.CANTIDAD * B.PRECIO AS IMPORTE, NOMBRE_PACIENTE, NOMBRE_MEDICO, NOMBRE_CONSULTORIO, TIPO_CONSULTORIO, A.FECHA, PACIENTE, MEDICO FROM V_ORDEND A
  LEFT JOIN KARDEX B ON B.ITEM = @litem
   WHERE  B.IDTRANSACCION = A.ORDENID  AND A.ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE A.FECHA BETWEEN @lfechainicio  AND @lfechafin and ESTADO = '3')
       AND  A.TIPO_CONSULTORIO = 'C'  AND A.ESTADO = '3' AND A.ITEM = @litem   ORDER BY A.NOMBRE_PACIENTE  ASC
  
 INSERT INTO [SIGSALUD].[dbo].[TMP_ATM_PACIENTES]([FECHA_INICIO], [FECHA_FIN], [ORDENID], [ITEM], [NOMBRE], [PRESENTACION], [CANTIDAD], [PRECIO], [DESCUENTO], [IMPORTE], [NOMBRE_PACIENTE], [NOMBRE_MEDICO], [NOMBRE_CONSULTORIO], [TIPO_CONSULTORIO], FECHA, PACIENTE, MEDICO)
   SELECT @lfechainicio2, @lfechafin2, ORDENID, A.ITEM, NOMBRE, PRESENTACION, B.CANTIDAD, B.PRECIO, DESCUENTO, B.CANTIDAD * B.PRECIO AS IMPORTE, NOMBRE_PACIENTE, NOMBRE_MEDICO, NOMBRE_CONSULTORIO, TIPO_CONSULTORIO, A.FECHA, PACIENTE, MEDICO FROM V_ORDEND A
  LEFT JOIN KARDEX B ON B.ITEM = @litem
   WHERE  B.IDTRANSACCION = A.ORDENID  AND A.ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE A.FECHA BETWEEN @lfechainicio  AND @lfechafin and ESTADO = '3')
       AND  A.TIPO_CONSULTORIO = 'E'  AND A.ESTADO = '3' AND A.ITEM = @litem   ORDER BY A.NOMBRE_PACIENTE  ASC

INSERT INTO [SIGSALUD].[dbo].[TMP_ATM_RESUMEN]([ITEM],[NOMBRE],[TIPO],[SERVICIO],[TOTAL],[IMPORTE_TOTAL])
SELECT @litem , @lcnombreitem, 'H', 'HOSPITALIZACION' AS SERVICIO, SUM(CANTIDAD) AS TOTAL, SUM(IMPORTE) AS IMPORTE_TOTAL FROM V_ORDEND
 WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN  @lfechainicio  AND @lfechafin) 
      AND  TIPO_CONSULTORIO = 'H'  AND ESTADO = '3' AND ITEM = @litem GROUP BY ITEM 
INSERT INTO [SIGSALUD].[dbo].[TMP_ATM_RESUMEN]([ITEM],[NOMBRE],[TIPO],[SERVICIO],[TOTAL],[IMPORTE_TOTAL])
SELECT @litem , @lcnombreitem, 'C', 'CONSULTORIO' AS SERVICIO, SUM(CANTIDAD) AS TOTAL, SUM(IMPORTE) AS IMPORTE_TOTAL FROM V_ORDEND
 WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN  @lfechainicio  AND @lfechafin) 
      AND  TIPO_CONSULTORIO = 'C'  AND ESTADO = '3' AND ITEM = @litem GROUP BY ITEM 
INSERT INTO [SIGSALUD].[dbo].[TMP_ATM_RESUMEN]([ITEM],[NOMBRE],[TIPO],[SERVICIO],[TOTAL],[IMPORTE_TOTAL])
SELECT @litem, @lcnombreitem, 'E', 'EMERGENCIA' AS SERVICIO, SUM(CANTIDAD) AS TOTAL, SUM(IMPORTE) AS IMPORTE_TOTAL FROM V_ORDEND
 WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN  @lfechainicio  AND @lfechafin) 
      AND  TIPO_CONSULTORIO = 'E'  AND ESTADO = '3' AND ITEM = @litem GROUP BY ITEM 
      
      
      