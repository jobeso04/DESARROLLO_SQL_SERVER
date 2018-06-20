/* select cuentaid from [dbo].[TMP_CTA_REV] */

SELECT * FROM CUENTA ORDER BY FECHA_APERTURA DESC


select CUENTAID, PACIENTE, SEGURO, FECHA_APERTURA, FECHA_CIERRE, FECHA_PAGO, CARGO, DESCUENTO, IMPORTE, ESTADO, HORA_APERTURA, NOMBRE, ORIGEN, USUARIO_APERTURA
 from CUENTA where cuentaid in (select cuentaid from [dbo].[TMP_CTA_REV]) order by CUENTAID desc
 
 /* select *  from CUENTADET where cuentaid in (select CUENTAID from CUENTA where cuentaid in (select cuentaid from [dbo].[TMP_CTA_REV])) order by CUENTAID desc */
 
 select CUENTAID, SUM(TOTAL) as ttotal from CUENTADET where cuentaid in (select CUENTAID from CUENTA where cuentaid in (select cuentaid from [dbo].[TMP_CTA_REV])) group by CUENTAID 
 order by CUENTAID desc
 
 
 
 
 SELECT SEGURO FROM CUENTA GROUP BY SEGURO ORDER BY SEGURO
 
 
SELECT * FROM dbo.SEGURO ORDER BY SEGURO ASC

 SELECT ESTADO FROM CUENTA GROUP BY ESTADO  ORDER BY ESTADO 
 
 use sigsalud
 select * from cuenta where cuentaid = '1645933'
 select * from CUENTADET where cuentaid = '1645933'