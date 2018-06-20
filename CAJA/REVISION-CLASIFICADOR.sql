use sigsalud
select * from item where ITEM = '60671'

select * from item where CODCPT = '27065' and ACTIVO in ('1', '7')

update item set clasificador = '1.3.34.15' where CODCPT = '24600' and ACTIVO in ('1', '7')
update item set clasificador = '1.3.34.15' where CODCPT = '26765' and ACTIVO in ('1', '7')
update item set clasificador = '1.3.34.21' where CODCPT = '90384' and ACTIVO in ('1', '7')
update item set clasificador = '1.3.34.21' where CODCPT = '90375' and ACTIVO in ('1', '7')
update item set clasificador = '1.3.34.21' where CODCPT = '27065' and ACTIVO in ('1', '7')



update 


60494 tratamiento cerrado de luxación de codo, muñeca y IR AL CLASIFICADOR 
 62992 tratamiento abierto de fractura de falange distal IR AL CLASIFICADOR 1.3.34.15
 62992 INMUNOGLOBULINA HUMANA ANTI RH IR AL CLASIFICADOR 1.3.34.21
 
 
declare @lcbusqueda varchar(250) =  '60494'
select distinct CODCPT, A.NOMBRE, A.GRUPO_RECAUDACION + ' - ' + B.NOMBRE RECAUDACION, A.CLASIFICADOR + '- ' + C.NOMBRE AS CLASIFICADOR, GRUPO_LIQUIDACION  from [SIGSALUD].[dbo].[ITEM] A
LEFT JOIN [SIGSALUD].[dbo].[GRUPO_RECAUDACION] B ON A.GRUPO_RECAUDACION = B.GRUPO_RECAUDACION
LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON A.CLASIFICADOR = C.CLASIFICADOR
where SUBSTRING(ITEM,1,1) = '6'  AND A.NOMBRE LIKE '%' + @lcbusqueda + '%' OR CODCPT LIKE '%' + @lcbusqueda + '%'  OR ITEM LIKE '%' + @lcbusqueda + '%' AND A.ACTIVO IN ('1', '7')
ORDER BY NOMBRE ASC

  
  
  SELECT * FROM GRUPO_LIQUIDACION
  
    SELECT * FROM GRUPO_RECAUDACION
    
    SELECT * FROM CLASIFICADOR
  
    
   
