update ACCESO_BOTONES set ESTADO = 1 where DNI in (select dni from USUARIO_WEB where cargo in ('OBSTETRA')) and substring(ID_BOTON,9,8) = '17000001'     
EXEC SP_ACTUALIZAR_MODULOS_WEB 'OBSTETRICIA', '16000002' 


17000001



select dni from USUARIO_WEB where cargo in ('ENFERMERO', 'TECNICO')

select dni from USUARIO_WEB where cargo in ('OBSTETRA')

select * from plantilla_botones

select * from acceso_botones


select * from ACCESO_BOTONES where substring(ID_BOTON,9,8) = '17000001'     

select * from ACCESO_BOTONES where NOMBRE like 'cambiar est%'