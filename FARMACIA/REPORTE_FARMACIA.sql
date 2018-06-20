use sigsalud	

select * from kardex order by fecha desc

select * from INGRESOd 

select * from INGRESOd 

select ITEM, INTERFASE2, nombre from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '19480'
select * from INGRESOD where item = '170930'

select ITEM, INTERFASE2, nombre from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '20803'

select * from INGRESOD where item = (select ITEM from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '20803')

select * from INGRESOc where estado = '2' and ingresoid in (select INGRESOID from INGRESOD where item = (select ITEM from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '20803'))
 order by FECHA desc


select top 1 PRECIO from INGRESOd where estado = '2' and ingresoid in (select INGRESOID from INGRESOD where item = (select ITEM from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '20803'))
 order by FECHA desc
 
 
 SELECT  [CODIGO_MED], [NOM_MEDICAM], [Suma de STOCK], [PRECIO COSTO]  FROM [SIGSALUD].[dbo].[STOCK_AGREGAR_PRECIO] 
 
 
select TOP 1 PRECIO from INGRESOD where INGRESOID in (select top 1 ingresoid from INGRESOc where estado = '2' and ingresoid in 
 (select INGRESOID from INGRESOD where item = (select ITEM from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = (SELECT CODIGO_MED FROM [SIGSALUD].[dbo].[STOCK_AGREGAR_PRECIO]))))
 
 
 
 
 
 
 select top 1 PRECIO from INGRESOd where INGRESOID in (select ingresoid from INGRESOc where estado = '2' and ingresoid in 
   (select INGRESOID from INGRESOD where item = (select ITEM from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '20803')) order by FECHA desc)
   
   
select top 1 PRECIO from INGRESOD
 where ingresoid = (select top 1 ingresoid from INGRESOC where INGRESOID in (select ingresoid from INGRESOD  where ITEM = (select ITEM from ITEM  where SUBSTRING(item, 1,2) = '17' and  INTERFASE2 = '20803')) order by FECHA desc) 
 
 




   
   
   
   
   
 
 
 


 
 