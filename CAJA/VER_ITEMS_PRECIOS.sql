use sigsalud

select * from v_item where nombre like '%SUTURA SIMPLE DE HERIDAS SUPERFICIALES%' order by ITEM desc

select * from dbo.V_PRECIOPUB where nombre like '%SUTURA SIMPLE DE HERIDAS SUPERFICIALES%' order by ITEM desc



select * from dbo.V_LSTITEMS where nombre like '%SUTURA SIMPLE DE HERIDAS SUPERFICIALES%' order by ITEM desc


select * from ITEM where nombre like '%SUTURA SIMPLE DE HERIDAS SUPERFICIALES%' order by ITEM desc

select A.ITEM, A.CODCPT,  A.NOMBRE, B.PRECIOA, B.PRECIOB, B.PRECIOC, B.PRECIOD from ITEM A LEFT JOIN PRECIO B ON B.ITEM = A.ITEM
 where A.nombre like '%SUTURA SIMPLE DE HERIDAS SUPERFICIALES%' order by ITEM desc