/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [DNI], [NOMBRES], [UNIDAD_ORGANICA], [EMAIL], [CARGO], [FECHA_EXPIRACION], [USU_NOMBRE], [USU_PATERNO], [USU_MATERNO], [FECH_ULT_INGRESO],
    [ESTADO], [CLAVE], [SEXO], [SESION], [FOTO], [FIRMA_LEGAJOS], [ACCESO_LEGAJOS], [FECHA_REGISTRO]  FROM [SIGSALUD].[dbo].[USUARIO_WEB]
    
select * from T_UnidadOrganica order by nombre asc    