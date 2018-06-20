/* PARA REPORTE ICI - SISMED - MINSA */

USE SIGSALUD	

SELECT * FROM ITEM 
SELECT * FROM STOCK


-----------------------
SELECT '05947' AS codigo_eje, '05947F01' as codigo_pre, 

CASE WHEN GRUPO_RECAUDACION = '17' and SUBSTRING(nombre, 1,4) = 'DONA'


TIPSUM = 'S' (CUANDO ES SISMED, D: DONACION



SELECT * FROM V_STOCK WHERE SUBSTRING(nombre, 1,4) = 'DONA'

DONACION=Bencilpenicilina Procainica 1000,000UI c/d. 

SELECT * FROM ITEM WHERE NOMBRE LIKE '%Bencilpenicilina Procainica%'

select * from ITEM 
annomes : formato : año/mes : ejemplo: 201606 ( para el mes en curso)
codigo_med : sismed

en columna adiconal: do_saldo (saldo donacion) :registrar el saldo de donacion
en columna adicional: do_ingre (ingreso por donacion), siempre y cuando el tiposum = 'D'


ingre : registro de ingreso por SISMED (Alamcen Sismed)
Reingre : devuelto al almacen, con nota de entrada

venta: venta al contado, columna: cont
sis : salida por sis, columna sis en parte diario de farmacia


intersan : intervencion sanitaria : sanitar + BTB (del reporte parte diario de farmacia)
fac_perd : columan en vacio
defnac: columna defensa nacional, transaccion VON - COLUMNA ADICIONAL

EXO: ITEMS EXOENRADOS
SAOT REGISTRO POR SOAT
CREDHOSPI : QUEDARIA EN BLANCO
otr_conv : otros convenios
devol: devolucion de farmacia que devuleve a almacen
vencido : no registrado
merma: no registrado
distri: no registra
transf : salida por transferencia de almacen hacia el exterior
ventainst: no registra
dev_ven : no registra
dev_merma : no registra
oras_salida: salidas no especificados, no regitrsa con frecuencia
stock_fin : sumatoria entre almacen y farmacia
stock_fin1 : sumatoria entre almacen y farmacia
Req: no registrado
total: total salida: desde venta, hasta otras salidas, columnas consecutivas
fec_exp: fecha de vencimiento, el mas proximo a vencer

do_con : consumo donacion, no registra, columna, dona
do_otr: otro tipo de salida donacion,  no registra
do_tot: sumatoria total, sumatoria desde do_con hasta do_otr
do_stk : saldo anterior: (do_saldo + do_ingre) - do_tot
do_fecexp: fecha de venciemineto de los items donados
fecha: fecha generada
usuario: admin
