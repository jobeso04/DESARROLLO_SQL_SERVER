select * from PACIENTE where NOMBRES like '%mendoza chilon%'

/*  UPDATE paciente SET flag = '0' WHERE paciente = '2016259364' */


select * from cita where nombre like '%mendoza%' and SEGURO = '01' order by FECHA_PROGRAMACION desc


select * from cita where PACIENTE = '2016259364'

select * from cita where historia = '0234161'

select * from v_cita where FECHA = convert(datetime, '2016-02-27', 101) and seguro = '01' order by NOMBRE_CONSULTORIO desc

select * from v_cita where  seguro = '01'  order by FECHA desc

