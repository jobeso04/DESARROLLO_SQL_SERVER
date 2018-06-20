/* ver las cuentas que se inabilitan */

select CUENTAID, ESTADO, FECHA_APERTURA, HORA_APERTURA, ORIGEN from CUENTA where ESTADO = '1' 
and FECHA_APERTURA <= convert(datetime, CONVERT (date, getdate()-5), 101) and ORIGEN <> 'HO' AND SEGURO = '01' ORDER BY FECHA_APERTURA DESC



select CUENTAID, ESTADO, FECHA_APERTURA, HORA_APERTURA, ORIGEN from CUENTA where ESTADO = '1' 
and FECHA_APERTURA < convert(datetime, CONVERT (date, getdate()-2), 101) and ORIGEN IN ('CE','OT','LB', 'AD')  AND SEGURO = '01' ORDER BY FECHA_APERTURA DESC


select CUENTAID, ESTADO, FECHA_APERTURA, HORA_APERTURA, ORIGEN from CUENTA where ESTADO = '1' 
and FECHA_APERTURA < convert(datetime, CONVERT (date, getdate()-5), 101) and ORIGEN <> 'HO' AND SEGURO = '01' ORDER BY FECHA_APERTURA DESC

update CUENTA set ESTADO = '2' where ESTADO = '1' and FECHA_APERTURA < convert(datetime, CONVERT (date, getdate()-5), 101) and ORIGEN <> 'HO' AND SEGURO = '01'




select * from cuenta where ESTADO='1' AND ORIGEN IN ('CE','OT','LB', 'AD') AND FECHA_APERTURA<=getdate() AND SEGURO='01';

select * from cuenta where ESTADO='1' AND ORIGEN IN ('HO') AND FECHA_APERTURA<=getdate() AND SEGURO='01';

select * from cuenta where ESTADO='1' AND ORIGEN IN ('HO') AND FECHA_APERTURA<=getdate() AND SEGURO='0';



select * from cuenta where ESTADO='1' AND ORIGEN IN ('CE','OT','LB', 'AD') AND FECHA_APERTURA<=getdate() AND SEGURO='02';





select * from cuenta where ESTADO='1' AND ORIGEN IN ('CE') AND FECHA_APERTURA<=getdate() AND SEGURO='01';

select * from cuenta where ESTADO='1' AND ORIGEN IN ('AD') AND FECHA_APERTURA<=getdate() AND SEGURO='01';

select * from cuenta where ESTADO='1' AND ORIGEN IN ('LB') AND FECHA_APERTURA<=getdate() AND SEGURO='01';

 UPDATE CUENTA SET ESTADO='2' WHERE ESTADO='1' AND ORIGEN IN ('CE','OT','LB') AND FECHA_APERTURA<=getdate() AND SEGURO='01';
	  DELETE FROM CUENTADET WHERE ORDENID IN (SELECT ORDENID FROM ORDENC WHERE FECHA>='01/12/2016' AND ESTADO='0');
	  
	  



SELECT ESTADO, * FROM CUENTA ORDER BY FECHA_APERTURA DESC