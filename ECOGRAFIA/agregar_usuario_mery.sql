INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM],[NOMBRE],[URL],[IMAGEN],[ESTADO],[DNI],[PLANTILLA],[MANUAL])
SELECT [ID_AM], [NOMBRE], 'http://192.168.0.9:8080/ecografia' [URL], [IMAGEN], [ESTADO], '44946921' as [DNI], [PLANTILLA], [MANUAL]
  FROM [SIGSALUD].[dbo].[ACCESO_MODULO] where DNI = '40391148' and ID_AM = '4394538115000004'


INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
SELECT [ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],  '44946921' [DNI]
  FROM [SIGSALUD].[dbo].[ACCESO_MENU] where DNI = '40391148' and ID_AM = '4394538115000004'


INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
SELECT [ID_SUBMENU], [NOMBRE], [ICONO], [URL], [ORDEN], [ESTADO], [ID_MENU], [ID_AM], '44946921' [DNI]
  FROM [SIGSALUD].[dbo].[ACCESO_SUBMENU] where DNI = '40391148' and ID_AM = '4394538115000004' 
