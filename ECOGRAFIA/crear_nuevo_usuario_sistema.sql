
-- selina  
  select * from [SIGSALUD].[dbo].[ACCESO_MODULO] where DNI = '40391148' and ID_AM = '4394538115000004'
  
    select * from [SIGSALUD].[dbo].[ACCESO_MENU] where DNI = '40391148' and ID_AM = '4394538115000004'
        select * from [SIGSALUD].[dbo].[ACCESO_subMENU] where DNI = '40391148' and ID_AM = '4394538115000004'
    update [SIGSALUD].[dbo].[ACCESO_MENU] set estado = '1' where DNI = '40391148' and ID_AM = '4394538115000004'
    update [SIGSALUD].[dbo].[ACCESO_SUBMENU] set estado = '1' where DNI = '40391148' and ID_AM = '4394538115000004'
  
-- milagros  
  select * from [SIGSALUD].[dbo].[ACCESO_MODULO] where DNI = '47095651' and ID_AM = '4394538115000004'
  

   SELECT CONVERT(NVARCHAR(30),HashBytes('MD5', 'jferrer'),2) 
   
   UPDATE USUARIO_WEB WHERE  DNI = '40391148'
   
   SELECT * FROM USUARIO_WEB WHERE DNI = '40391148'
   
    select * from [SIGSALUD].[dbo].[ACCESO_MODULO] where DNI = '40391148' 
    select * from [SIGSALUD].[dbo].[ACCESO_MODULO] where DNI = '47095651'
    
    
   USE SIGSALUD
   SELECT * FROM USUARIO_WEB WHERE  DNI = '40391148'
   
   SELECT * FROM USUARIO_WEB WHERE  DNI = '40391148'
   
   186FB23A33995D91CE3C2212189178
  
  select  dni as id_personal  from    usuario_web  where    dni = '47095651'  and    clave = CONVERT(NVARCHAR(30),HashBytes('MD5', '" + s_passwd + "'),2) " +
                    "   and    estado = '1'
                    
                    
select * from usuario_web                     
                    
select * from  [SIGSALUD].[dbo].[ACCESO_MODULO] where  DNI = '47095651'
  
  
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM],[NOMBRE],[URL],[IMAGEN],[ESTADO],[DNI],[PLANTILLA],[MANUAL])
SELECT [ID_AM], [NOMBRE], [URL], [IMAGEN], [ESTADO], '47095651' as [DNI], [PLANTILLA], [MANUAL]
  FROM [SIGSALUD].[dbo].[ACCESO_MODULO] where DNI = '40391148' and ID_AM = '4394538115000004'


INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
SELECT [ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],'47095651' [DNI]
  FROM [SIGSALUD].[dbo].[ACCESO_MENU] where DNI = '40391148' and ID_AM = '4394538115000004'

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
SELECT [ID_SUBMENU], [NOMBRE], [ICONO], [URL], [ORDEN], [ESTADO], [ID_MENU], [ID_AM], '47095651' [DNI]
  FROM [SIGSALUD].[dbo].[ACCESO_SUBMENU] where DNI = '40391148' and ID_AM = '4394538115000004'
GO



SELECT [ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI]
  FROM [SIGSALUD].[dbo].[ACCESO_MENU] where DNI = '47095651'  and ID_AM = '4394538115000004' AND ORDEN = '1'

UPDATE [SIGSALUD].[dbo].[ACCESO_MENU] SET ESTADO = '0' where DNI = '47095651'  and ID_AM = '4394538115000004' AND ORDEN = '1'

UPDATE [SIGSALUD].[dbo].[ACCESO_MENU] where DNI = '40391148' and ID_AM = '4394538115000004'


  
  update [SIGSALUD].[dbo].[ACCESO_MODULO] set url = 'http://192.168.0.9:8080/ecografia' where DNI = '40391148' and ID_AM = '4394538115000004'  


SELECT *
  FROM [SIGSALUD].[dbo].[ACCESO_Menu] where DNI = '47095651' 
    
    
    
    40391148'