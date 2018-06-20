declare @lfechainicial datetime = convert(datetime, '2015-08-25',102);
declare @lfechafinal datetime = convert(datetime, '2015-08-25',102);
declare @gruporecauda varchar(10) = '04'
declare @lusuario varchar(50) = 'YVALLE'

SELECT distinct PAGOID, FECHA_REGISTRO, NUMERO, NOMBRE, CONSULTORIO, TIPO_PAGO, SUBTOTAL, DESCUENTO, TOTAL, ESTADO from V_Boleta_Grupo 
 WHERE Fecha between convert(date, @lfechainicial, 103) and convert(date,@lfechafinal,103)
  and Grupo_recaudacion = @gruporecauda  and usuario = 'YVALLE' order by FECHA_REGISTRO asc 
  
 SELECT PAGOID, FECHA_REGISTRO, NUMERO, NOMBRE, CONSULTORIO, TIPO_PAGO, SUBTOTAL, DESCUENTO, TOTAL, ESTADO from V_Boleta_Grupo 
   WHERE Fecha between convert(date, @lfechainicial, 103) and convert(date,@lfechafinal,103)
     and Grupo_recaudacion = @gruporecauda  and usuario = @lusuario  order by FECHA_REGISTRO asc 
      