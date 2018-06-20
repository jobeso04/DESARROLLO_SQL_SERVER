use sigsalud
select * from cuenta where FECHA_APERTURA <= CONVERT(datetime, '2017-08-01',101) 
order by CUENTAID desc


and ESTADO = '1' and ORIGEN = 'CE' AND SEGURO = '01' 

select * from CUENTA  WHERE ESTADO='1' AND ORIGEN IN ('CE','OT','LB', 'AD') AND FECHA_APERTURA<=getdate() AND SEGURO='01';

select * from CUENTA  WHERE ESTADO='1' AND ORIGEN IN ('CE','OT','LB', 'AD') AND FECHA_APERTURA<getdate() AND SEGURO='01';


select fecha_apertura, hora_apertura, convert(date, GETDATE(),101) from cuenta




	  DELETE FROM CUENTADET WHERE ORDENID IN (SELECT ORDENID FROM ORDENC WHERE FECHA>='01/12/2016' AND ESTADO='0');


