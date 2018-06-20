/* repoRTE - SHIRLE - YVALLE- PIZARRO */

use sigsalud
 declare @lfechainicial varchar(10) = '2017-07-01'
 declare @lfechafinal varchar(10) = '2017-12-31'
 declare @lc_lista_de_grupo_de_recaudacion  table (grupo varchar(2));    insert @lc_lista_de_grupo_de_recaudacion(grupo) 
                 values('17'), ('04'), ('06'), ('02')
 SELECT  CONVERT(VARCHAR(10), a.FECHA_REGISTRO,103) AS FECHA_DE_PAGO, CONVERT(VARCHAR(5), CONVERT(TIME(7), a.FECHA_REGISTRO)) AS HORA_DE_PAGO, B.HISTORIA,  A.NOMBRE, A.CONSULTORIO AS UPS, ITEM_NOMBRE AS CONCEPTO_DE_PAGO, EXPR1 AS SUB_TOTAL
 from V_Boleta_Grupo A  
      LEFT JOIN PACIENTE B ON A.PACIENTE = B.PACIENTE
        WHERE a.Fecha between convert(datetime, @lfechainicial, 101) and convert(datetime,@lfechafinal,101)
      and a.GRUPO_RECAUDACION IN (SELECT grupo FROM @lc_lista_de_grupo_de_recaudacion) ORDER BY A.FECHA_REGISTRO asc
      
      
-- SELECT * FROM V_Boleta_Grupo      
      
      
 