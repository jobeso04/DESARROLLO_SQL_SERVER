INSERT INTO [SIGSALUD].[dbo].[USUARIOD]
           ([MODULO]
           ,[USUARIO]
           ,[MENU]
           ,[BOTON1]
           ,[BOTON2]
           ,[BOTON3]
           ,[BOTON4]
           ,[BOTON5]
           ,[BOTON6]
           ,[BOTON7]
           ,[BOTON8]
           ,[BOTON9]
           ,[BOTON10]
           ,[BOTON11]
           ,[BOTON12])
           
select MODULO, 'FRAMIREZ' as usuario, MENU, BOTON1, BOTON2, BOTON3, BOTON4, BOTON5, BOTON6, BOTON7, 
BOTON8, BOTON9, BOTON10, BOTON11, BOTON12 from usuariod  where USUARIO = 'jsanchez' and MENU in ('0201')
