
/* SE OTORGO CITA, PERO NO SALE FECHA DE PAGO */

SELECT *  FROM [SIGSALUD].[dbo].[CITA] where CITA_ID = '150078069'
  
  select * from  CITA where  CITA_ID = '150078071'
  select * from  CITA where  CITA_ID = '150078069'   /* 15124026 */
  
  select * from pagoc  where NUMERO = '002-0934591'
  
  /* 2015-07-15 09:20:00.590 */
  
/*   update CITA set FECHA_PAGO = CONVERT(datetime, '2015-07-15 09:20:00',120) where CITA_ID = '150078071' */

/* update CITA set pagoid = '15124026'  where CITA_ID = '150078071' */

 /* update CITA set pagoid = '15124026'  where CITA_ID = '150078071' */
 
  /* update CITA set ESTADO = '3'  where CITA_ID = '150078071' */
  
  SELECT * FROM CITA WHERE NOMBRE LIKE '%BAUTISTA CHAVEZ%'

