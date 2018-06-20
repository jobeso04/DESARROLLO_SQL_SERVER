select * from [SIGSALUD].[dbo].[CUENTA]  WHERE CUENTAID = '1757659' 
select * from [SIGSALUD].[dbo].[CUENTAdet]  WHERE CUENTAID = '1757659' 
order by ITEM 


select item, precio, cantidad, importe, round(precio*cantidad,2) as sub_total from [SIGSALUD].[dbo].[CUENTADET]  WHERE CUENTAID = '1757659' 
order by ITEM 

DELETE FROM [SIGSALUD].[dbo].[CUENTADET]  WHERE CUENTAID = '1757659' 


1757659  



  update [SIGSALUD].[dbo].[CUENTADET] set IMPORTE = PRECIO*CANTIDAD 