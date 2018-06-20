declare @lmedico varchar(150) = 'OBESO'

/* sistema web de emergencia / rol de guardias */
select nombres, DNI, CLAVE, CARGO, FECHA_EXPIRACION, estado  from USUARIO_WEB where NOMBRES like '%' + @lmedico + '%%'

/* sistema de consultorio, admision */
select MODULO, USUARIO, CONTRASENA, NOMBRE, FECHA_EXPIRACION, activo, DNI from USUARIO where NOMBRE like '%' + @lmedico + '%%'
