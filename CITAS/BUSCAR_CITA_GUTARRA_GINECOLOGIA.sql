use SIGSALUD
select * from CITA where consultorio = '4041' and MEDICO = 'GGJ'  and month(fecha) = 6 and year(fecha) = 2017 and day(fecha) = 22 order by NUMERO  asc


select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 ORDER BY FECHA DESC


select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111241%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111242%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111243%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111244%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111245%'

select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111246%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111247%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111248%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111249%'
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) = 6 and year(fecha) = 2017 AND SENTENCIASQL LIKE '%170111250%'




use sigsalud
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) >= 1 and year(fecha) = 2017 and USUARIORED = 'jlozano' order by FECHA desc