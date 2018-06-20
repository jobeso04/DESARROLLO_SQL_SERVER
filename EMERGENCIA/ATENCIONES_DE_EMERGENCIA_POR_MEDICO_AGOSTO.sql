use SIGSALUD
DECLARE @lcmedico varchar(3) = 'CLO'
select 'ABRIL' AS MES, @lcmedico AS MEDICO, COUNT(*) as ATENCIONES from EMERGENCIA where fecha between convert(datetime, '2017-04-01',101)  and convert(datetime, '2017-04-30',101) and ESTADO <> '0'
and QUIEN_ATIENDE = @lcmedico
UNION ALL
select 'MAYO' AS MES, @lcmedico AS MEDICO, COUNT(*) as ATENCIONES from EMERGENCIA where fecha between convert(datetime, '2017-05-01',101)  and convert(datetime, '2017-05-31',101) and ESTADO <> '0'
and QUIEN_ATIENDE = @lcmedico
UNION ALL
select 'JUNIO' AS MES, @lcmedico AS MEDICO, COUNT(*) as ATENCIONES from EMERGENCIA where fecha between convert(datetime, '2017-06-01',101)  and convert(datetime, '2017-06-30',101) and ESTADO <> '0'
and QUIEN_ATIENDE = @lcmedico
UNION ALL
select 'JULIO' AS MES, @lcmedico AS MEDICO, COUNT(*) as ATENCIONES from EMERGENCIA where fecha between convert(datetime, '2017-07-01',101)  and convert(datetime, '2017-07-31',101) and ESTADO <> '0'
and QUIEN_ATIENDE = @lcmedico
UNION ALL
select 'AGOSTO' AS MES, @lcmedico AS MEDICO, COUNT(*) as ATENCIONES from EMERGENCIA where fecha between convert(datetime, '2017-08-01',101)  and convert(datetime, '2017-08-31',101) and ESTADO <> '0'
and QUIEN_ATIENDE = @lcmedico
