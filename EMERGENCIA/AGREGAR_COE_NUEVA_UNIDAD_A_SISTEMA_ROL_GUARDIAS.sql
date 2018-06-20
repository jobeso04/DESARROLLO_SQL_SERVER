
USE BDPERSONAL

/* 
UPDATE [BDPERSONAL].[dbo].[T_UnidadOrganica] SET NOMBRE = 'REFERENCIA Y CONTRAREFERENCIA' WHERE CODIGO = '0223'
  INSERT INTO [BDPERSONAL].[dbo].[T_UnidadOrganica] (CODIGO, NOMBRE, TIPO)
   VALUES ('0390', 'CENTRO DE OPERACIONES DE EMERGENCIA-COE', 'R')
INSERT INTO [BDPERSONAL].[dbo].[DepartamentoUnidad]([Codigo], [Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES ('0390', 'CENTRO DE OPERACIONES DE EMERGENCIA-COE', 'R', '1', '')
INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad](IdDepartUnid, Codigo, Nombre, Tipo, Activo, DniAcceso)
   VALUES (29, '0390', 'CENTRO DE OPERACIONES DE EMERGENCIA-COE', 'R', 1, '46716204')
INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro] ([IdServDepartUnid],[IdDepartUnid],[Codigo],[Activo])
     VALUES (109, 29, '084052', 1)
     */

