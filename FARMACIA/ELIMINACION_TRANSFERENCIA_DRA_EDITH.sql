use SIGSALUD
select TRANSFERENCIAID, DOCUMENTO, FECHA, FECHA_PROCESO, DEALMACEN, AALMACEN, OBSERVACION, SUBTOTAL, DESCUENTO, IGV, TOTAL, ESTADO, HORA_PROCESO, usuario from TRANSFERENCIAC where TRANSFERENCIAID = '17000467'
select transferenciaid, ITEM, NOMBRE, PRESENTACION, CANTIDAD, PRECIO, IMPORTE, ESTADO,DEALMACEN, AALMACEN, FECHA_PROCESO from V_TRANSFERENCIAD where TRANSFERENCIAID = '17000467' order by NOMBRE asc


/*
DELETE FROM TRANSFERENCIAD where TRANSFERENCIAID = '17000467' 
DELETE FROM TRANSFERENCIAC where TRANSFERENCIAID = '17000467' 

*/