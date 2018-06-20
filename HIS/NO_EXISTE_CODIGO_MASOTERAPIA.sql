use SIGSALUD

/* masoterapia - 9712401 - existe en el nuevo tarifario, mas no en el HIS MINSA */

/* identificamos las atenciones */
select * from ATENCIONC where ID_CITA in (select id_cita from ATENCIONd where DX = '9712401')

/* revisamos el detalle */
select * from ATENCIONd where ID_CITA in (select id_cita from ATENCIONd where DX = '97010') and DX = '97010' 

/* lo cambiamos a : 97010 - Terapia fisica a una o mas areas; frio o calor local */
update ATENCIOND set DX = '97010' where ID_CITA in (select id_cita from ATENCIONd where DX = '9712401') and DX = '9712401' 

select * from CIEXHIS where CODIGO = '97010'



/* ete es otro caso */

update ATENCIOND set DX = 'U160' where ID_CITA in (select id_cita from ATENCIONd where DX = 'AD024') and DX = 'AD024'



select * from v_ATENCIONC where ID_CITA in (select id_cita from ATENCIONd where DX = 'U160')



U160

select * from v_ATENCIONC where ID_CITA in (select id_cita from ATENCIONd where DX = 'AD024')


SELECT * FROM CIEXHIS WHERE NOMBRE LIKE 'MASOTE%'


SELECT * FROM ITEM WHERE NOMBRE LIKE 'MASO%'

select * from PRECIO where ITEM in ('63464', '607055')