

@emergencia_id char(8),
@temperatura float,
@presion float,
@presiond float,
@pulso float,
@fr float,
@peso float,
@fc float,
@sat_ox float,
@usuario char(8),
@medico char(8),
@estado char(1),
@servicio char(100)



sp_guardar_funsiones_vitales 


SELECT TOP 1 * FROM EMERGENCIA  ORDER BY EMERGENCIA_ID DESC 

SELECT * FROM EMERGENCIA WHERE EMERGENCIA_ID = (SELECT MAX(EMERGENCIA_ID) FROM EMERGENCIA) 

select max(fecha) as ultimo FROM EMERGENCIA


SELECT TOP 1 * FROM EMERGENCIA ORDER BY EMERGENCIA_ID DESC



  select *  FROM EMERGENCIA WHERE FECHA = CONVERT(DATETIME, '2015-07-19 00:00:00.000', 102) ORDER BY EMERGENCIA_ID ASC
*/

select * from EMERGENCIA where EMERGENCIA_ID = '15031117'
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = '15031117'
