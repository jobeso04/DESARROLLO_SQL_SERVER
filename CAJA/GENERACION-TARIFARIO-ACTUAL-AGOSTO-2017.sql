use SIGSALUD
select codcpt, COUNT(codcpt) as cnt from item where substring(ITEM,1,1) = '6'  group by CODCPT order by COUNT(codcpt) desc

/* D7111, D0220 */

select nombre from ITEM where substring(ITEM,1,1) = '6' and codcpt = 'D0220'and ACTIVO = '1'

/* pagante */
select PRECIOA from PRECIO  where ITEM in (select item from ITEM where substring(ITEM,1,1) = '6' and codcpt = 'D0220'and ACTIVO = '1')
/* SIS SOA */
select PRECIOE, PRECIOH from PRECIO  where ITEM in (select item from ITEM where substring(ITEM,1,1) = '6' and codcpt = 'D0220'and ACTIVO = '7')
