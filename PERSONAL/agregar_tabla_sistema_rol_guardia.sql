
  
  INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU] (ID_MENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_AM, DNI)
       VALUES ('24467405895125668366', 'Tablas del Sistema', '<i class="menu-icon fa fa-wrench"></i>', 'mantenimiento', '1', '1', '11020212552901091031', '46716204')
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU](ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
     VALUES ('97881822490401135251', 'Unidad Organica', '<i class="menu-icon fa fa-sitemap"></i>', '../unidad_organica/index.jsp', '3', '1', '24467405895125668366', '11020212552901091031', '46716204')
