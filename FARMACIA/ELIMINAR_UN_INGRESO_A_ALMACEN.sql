USE SIGSALUD
SELECT * FROM [SIGSALUD].[dbo].[INGRESOC]WHERE INGRESOID = '17000530' 

SELECT * FROM [SIGSALUD].[dbo].[INGRESOD] WHERE INGRESOID = '17000530' 

DELETE FROM [SIGSALUD].[dbo].[INGRESOD] WHERE INGRESOID = '17000530' 
DELETE FROM [SIGSALUD].[dbo].[INGRESOC] WHERE INGRESOID = '17000530' 

    
   
171210  ** ME QUEDE AQUI   
171215  

  
171217    
171262    
171322    


SELECT * FROM [SIGSALUD].[dbo].[KARDEX] WHERE IDTRANSACCION = '17000530'  AND ALMACEN = 'A' AND TIPO_TRANSACCION = 'ITP'

