/* RESOLVER EL PROBLEMA DE CITAS QUE NO GRABAN */
use SIGSALUD
DECLARE @lfechainicio varchar(10) = '2016-01-01'
/* SELECT * FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE FECHA >= CONVERT(DATETIME, @lfechainicio, 101)  ORDER BY NOMCONSULTORIO ASC */
SELECT * FROM [SIGSALUD].[dbo].[ATENCIONC]  WHERE FECHA >= CONVERT(DATETIME, @lfechainicio, 101) AND TIPO_CITA IS NULL  ORDER BY NOMCONSULTORIO ASC   
/*  UPDATE [SIGSALUD].[dbo].[ATENCIONC] SET TIPO_CITA = 'C' WHERE FECHA >= CONVERT(DATETIME, @lfechainicio, 101) AND SUBSTRING(ID_CITA,1,2) = '16' AND TIPO_CITA IS NULL     */
/* SELECT * FROM [SIGSALUD].[dbo].[ATENCIONC]  WHERE FECHA >= CONVERT(DATETIME, @lfechainicio, 101) AND TIPO_CITA IS NULL  ORDER BY NOMCONSULTORIO ASC  */

/* SELECT * FROM [SIGSALUD].[dbo].[ATENCIONC]  WHERE FECHA >= CONVERT(DATETIME, @lfechainicio, 101)   ORDER BY FECHA  desc */


