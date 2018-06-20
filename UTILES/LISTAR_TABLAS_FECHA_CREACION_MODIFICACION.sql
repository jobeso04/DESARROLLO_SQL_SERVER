/* Listar todas las tablas, fecha de creacion, fecha de modificacion  */
use SIGSALUD
go
/* Listar las Tablas */
SELECT * FROM sys.objects
WHERE type = 'U'
ORDER BY modify_date DESC

/* Listar procedimientos almacenados 
SELECT * FROM sys.objects
WHERE type = 'P' AND name NOT LIKE 'sp_%'
ORDER BY modify_date DESC

/* Listar Funciones */
SELECT * FROM sys.objects
WHERE type = 'FN'
ORDER BY modify_date DESC */

