

 SET LANGUAGE Spanish
	  UPDATE CUENTA SET ESTADO='2' WHERE ESTADO='1' AND ORIGEN IN ('CE','OT','LB', 'AD') AND FECHA_APERTURA<=getdate() AND SEGURO='01';
	  
	  
	  
	  select CUENTAID, PACIENTE, SEGURO,  * from CUENTA  WHERE ESTADO='1' AND ORIGEN IN ('CE','OT','LB', 'AD') AND FECHA_APERTURA<=getdate() AND SEGURO='01'
	    order by nombre asc
	  
	  DELETE FROM CUENTADET WHERE ORDENID IN (SELECT ORDENID FROM ORDENC WHERE FECHA>='01/12/2016' AND ESTADO='0');
	  
	  
Select Cuenta,Nombres,Origen, Seguro,convert(varchar(10), fecha_apertura,103) + ' - '  + convert(varchar(10), HORA_APERTURA,103) FECHA_HORA, Historia,autoriza_Numero 
 from v_CreditoAyuda order by nombres	  

Select top 2 Cuenta,Nombres,Origen,Seguro,Historia,autoriza_Numero from v_CreditoAyuda order by Nombres


Select Cuenta,Nombres,Origen,Seguro,Historia,autoriza_Numero from v_CreditoAyuda order by Nombres


SELECT     C.CUENTAID AS CUENTA, C.NOMBRE AS NOMBRES, P.HISTORIA, S.NOMBRE AS SEGURO, C.AUTORIZA_NUMERO, C.ESTADO, S.TIPO_SEGURO, 
                      C.SEGURO AS CODSEGURO, C.ORIGEN, P.NOMBRES AS NOMPACIENTE, C.CONSULTORIO, dbo.CONSULTORIO.NOMBRE AS NOMCONSULTORIO, 
                      dbo.ORIGEN.NOMBRE AS NOMORIGEN, P.PACIENTE, C.FECHA_APERTURA, C.HORA_APERTURA
FROM         dbo.CUENTA AS C INNER JOIN
                      dbo.PACIENTE AS P ON P.PACIENTE = C.PACIENTE INNER JOIN
                      dbo.SEGURO AS S ON C.SEGURO = S.SEGURO INNER JOIN
                      dbo.ORIGEN ON C.ORIGEN = dbo.ORIGEN.ORIGEN INNER JOIN
                      dbo.CONSULTORIO ON C.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO
WHERE     (C.CUENTAID <> '0') AND (C.ESTADO = '1')  


use SIGSALUD
select * from CUENTA where ESTADO = '1' and FECHA_APERTURA <='22/08/2017' order by FECHA_APERTURA desc

update CUENTA set estado = '2' where ESTADO = '1' and FECHA_APERTURA <='19/08/2017'

INFORMATICA-04 # jobesoc

select 2560 - 265

2295


select * from CITA where CONSULTORIO = '4045' and FECHA = convert(datetime, '2017-08-21', 101)
select * from ROLACTIVIDAD where CONSULTORIO = '4045' and PERIODO = '201708'

update ROLACTIVIDAD set D21 = 'RPE' where CONSULTORIO = '4045' and PERIODO = '201708'





select * from V_HOSPITALIZACION where NOMBRE like 'LOZANO LAURA%'

17002820

select * from HOSPITALIZA where NOMBRES like 'lozano laura%'


select * from CUENTA where PACIENTE = '2016265131' order by CUENTAID desc