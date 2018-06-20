use SIGSALUD

select * from ITEM where NOMBRE like 'sodio cloru%'

select * from INGRESOC where DOCUMENTO = '611' order by FECHA desc

select * from INGRESOD where INGRESOID = '16000616'

/* primera solucion */

update INGRESOD set ITEM = '170610' where INGRESOID = '16000616'