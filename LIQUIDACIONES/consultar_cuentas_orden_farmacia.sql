use sigsalud
select * from CUENTA where CUENTAID = '1642436'
select * from CUENTAdet where CUENTAID = '1642436' and substring(ORDENID,1,2) = '17'

select SUM(TOTAL) as tt from CUENTAdet where CUENTAID = '1642436' and substring(ORDENID,1,2) = '17'

select *  from ORDENC where CUENTAID = '1642436' and estado = '3' order by ORDENID asc
select *  from ORDENd where ordenid in (select ordenid  from ORDENC where CUENTAID = '1642436' and estado = '3') and estado = '3' order by ORDENID asc

select SUM(SUBTOTAL) as tt from ORDENd where ordenid in (select ordenid  from ORDENC where CUENTAID = '1642436' and estado = '3') and estado = '3' 

select * from ORDENd where ordenid in (select ordenid  from ORDENC where CUENTAID = '1642436' and estado = '3') and estado = '3' 




1642436

select SUM(TOTAL) as tt from CUENTAdet where CUENTAID = '1642436'

select * from ORDENC where ORDENID = '16030901'

select * from ORDENC where CUENTAID = '1642436' and estado = '3'

select SUM(TOTAL) as tt  from ORDENC where CUENTAID = '1642436' and estado = '3'

select *  from ORDENC where CUENTAID = '1642436' and estado = '3' order by ORDENID asc
select *  from ORDENd where CUENTAID = '1642436' and estado = '3' order by ORDENID asc



select 342.9
