 declare @lmes varchar(2) = '06'
 declare @lanio varchar(4) = '2015'
 
 INSERT INTO TMPHISTORICOPERSONAL (CODIGO, NOMBRE, DNI, CARGO, TIPO_TRABAJADOR, CODHORA, CODTAR, HABER, HORAS, DNI_RELOG, COSTO_HORA, MINUTOS_DESCONTAR, 
                                 FALTA, HORAS_TARDE, MINUTOS_TARDE, HORAS_TARDANZA, HORAS_SGH, MINUTOS_ANTES_SALIDA, PERMISO, HORAS_SALIDA_DESCONTAR, DESCUENTO, mes, anio)
      SELECT CODIGO, NOMBRE, DNI, CARGO1, TIPO_TRABAJADOR, CODHORA, CODTAR, HABER, HORAS, DNI_RELOG, COSTO_HORA, MINUTOS_DESCONTAR, FALTA, HORAS_TARDE, MINUTOS_TARDE, HORAS_TARDANZA,
    HORAS_SGH = (CASE WHEN tipo_trabajador= 'S' THEN 6*PERMISO*COSTO_HORA ELSE 8*PERMISO*COSTO_HORA END),  MINUTOS_ANTES_SALIDA, PERMISO, HORAS_SALIDA_DESCONTAR, (COSTO_HORA*HORAS_TARDANZA + (CASE WHEN tipo_trabajador= 'S' THEN 6*FALTA*COSTO_HORA ELSE 8*FALTA*COSTO_HORA END) +
       (CASE WHEN tipo_trabajador= 'S' THEN 6*PERMISO*COSTO_HORA ELSE 8*PERMISO*COSTO_HORA END)) as descuento, @lmes, @lanio FROM TMPPERSONAL  ORDER BY nombre asc
       
       select * from TMPHISTORICOPERSONAL
       
/*       truncate table TMPHISTORICOPERSONAL */

SELECT IDTMPHSTORICO, CODIGO, NOMBRE, DNI, CARGO, TIPO_TRABAJADOR, CODHORA, CODTAR, HABER, HORAS, DNI_RELOG, COSTO_HORA, MINUTOS_DESCONTAR, FALTA, HORAS_TARDE, MINUTOS_TARDE, HORAS_TARDANZA,
       HORAS_SGH, MINUTOS_ANTES_SALIDA, PERMISO, HORAS_SALIDA_DESCONTAR, DESCUENTO, MES, ANIO  FROM TMPHISTORICOPERSONAL where mes = ?lmes and anio = ?lanio