use sigsalud

select * from rayosx 

alter table rayosx add B8_10 INT NOT NULL DEFAULT ((0))
alter table rayosx add B10_12 INT NOT NULL DEFAULT ((0))
alter table rayosx add M8_10 INT NOT NULL DEFAULT ((0))
alter table rayosx add M10_12 INT NOT NULL DEFAULT ((0))


/* ELIMINAR ESTOS PROCEDIMIENTO Y VOLVER A EJECUTAR */

DROP PROCEDURE SP_RAYOSX
DROP PROCEDURE SP_RAYOSX_CUADRO1
DROP PROCEDURE [dbo].[SP_RAYOSX_PLACAS]
DROP PROCEDURE [dbo].[SP_RAYOSX_PLACAS2]

/* AGREGAR EN LA VISTA V_RAYOSX */

 A.B8_10, A.B10_12, A.M8_10, A.M10_12,





