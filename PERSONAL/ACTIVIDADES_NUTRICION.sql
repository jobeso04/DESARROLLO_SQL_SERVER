/****** Script para el comando SelectTopNRows de SSMS  ******/
/* INCLUIR DENTRO DE CONSULTA NUTRICIONAL  :  - PEDIATRICO
                                              - ADULTO */
                                              
                                              

SELECT [ID_ACTIVIDAD], [NOMBRE], [ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO]  FROM [BDPERSONAL].[dbo].[ACTIVIDADES]
 where ACTIVO = 3 
 
 
INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE], [ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
 VALUES ('CONULTA' 
           (<NOMBRE, varchar(25),>
           ,<ABREVIATURA, varchar(5),>
           ,<ACTIVO, char(1),>
           ,<TITULO, varchar(500),>
           ,<SUBTITULO, varchar(500),>)
GO
 
 
 /*
 HOSPITALIZACION MEDICINA INTERNA
 HOSPITALIZACION CIRUGIA
 HOSPITALIZACION CIRUGIA
 HOSPITALIZACION NEONATOLOGIA
 HOSPITALIZACION PEDIATRIA
 HOSPITALIZACION GINECOLOGIA
 */
 
 /*
 UCI - ADULTOS
 UCI - PEDIATRIA
 */
 
 /* 
 EMERGENCIA
 CENTRO OBSTETRICO
 
 */
 
 CENTRAL D EPRODUCCION, REGIMENES NURICIONALES Y FORMULAS ESPECIALES
 */
  
 
 
 
 
 
 
 