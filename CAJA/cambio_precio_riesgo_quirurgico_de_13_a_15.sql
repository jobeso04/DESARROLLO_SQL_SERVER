update PRECIO set precioa = 15 where ITEM = '63466'

UPDATE PRECIO SET PRECIOB = PRECIOA-PRECIOA*0.3, PRECIOC = PRECIOA-PRECIOA*0.5, PRECIOD = PRECIOA-PRECIOA, PRECIOE = 0, PRECIOF = PRECIOA, PRECIOG = PRECIOA,
  PRECIOH = 0, PRECIOI = PRECIOA, PRECIOJ = PRECIOA, PRECIOK = PRECIOA WHERE item = '63466'

select * from PRECIO  where ITEM = '63466'

select CODCPT, * from ITEM   where ITEM = '63466'