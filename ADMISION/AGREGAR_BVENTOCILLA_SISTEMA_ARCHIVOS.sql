DELETE FROM [SIGSALUD].[dbo].[USUARIOD] WHERE USUARIO = 'BVENTOCILLA'

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
  SELECT MODULO, 'BVENTOCILLA', MENU, BOTON1, BOTON2, BOTON3, BOTON4, BOTON5, BOTON6, BOTON7, BOTON8, BOTON9, BOTON10, BOTON11, BOTON12 FROM [SIGSALUD].[dbo].[USUARIOD] WHERE USUARIO = 'JSANCHEZ'