/****** Script para el comando SelectTopNRows de SSMS  ******/
use SIGSALUD
SELECT  *  FROM [SIGSALUD].[dbo].[cpt_de_fox]

select CODCPT, nombre from ITEM  where SUBSTRING(item,1,1) = '6' and ACTIVO = '1' and CODCPT not in (SELECT  cod_cpt  FROM [SIGSALUD].[dbo].[cpt_de_fox])
3260


4016

select 4016 - 3260
756



select CODCPT, nombre from ITEM  where SUBSTRING(item,1,1) = '6' and ACTIVO = '1' and CODCPT in (SELECT  cod_cpt  FROM [SIGSALUD].[dbo].[cpt_de_fox])
756


select 1350 - 756

756

no tenemos : 594



3260
1350


select 3260 + 1350


select * from ITEM  where SUBSTRING(item,1,1) = '6' and ACTIVO = '1'







   select * from CIEXHIS where codigo = '84132'
   
   
   
  
  ANESTESIA PARA EXCISIÓN O DEBRIDACIÓN  DE QUEMADURAS  DE SEGUNDO Y TERCER GRADO CON O SIN INJERTO, EN CUALQUIER LUGAR, POR SUPERFICIE CORPORAL TOTAL 
  (SCT) TRATADO DURANTE LA ANESTESIA O CIRUGÍA;
  
  
  use sigsalud
  select CODCPT,* from item where codcpt = '16010' and substring(item,1,1) = '6' order by ITEM desc
  
  DEBRIDAMIENTO Y/O LIMPIEZA QUIRÚRGICA DE QUEMADURAS BAJO ANESTESIA
   
   Debridamiento y/o limpieza quirurgica de quemaduras bajo anestesia
   
   
  