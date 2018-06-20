use SIGSALUD
/*
select * from ATENCIONC 
*/
/*
1. agregar columnas en la tabla ATENCIONC
2. AGREGAR EL PROCEDIMIENTO ALMACENADO
3. AGREGAR LAS COLUMNAS EN LA VISTA: V_ATENCIOND
*/



alter table [SIGSALUD].[dbo].[ATENCIONC] add PERIMETRO_ABDOMINAL varchar(10) 
alter table [SIGSALUD].[dbo].[ATENCIONC] add PERIMETRO_CEFALICO  varchar(10) 
alter table [SIGSALUD].[dbo].[ATENCIONC] add PESO_PACIENTE  varchar(10) 
alter table [SIGSALUD].[dbo].[ATENCIONC] add TALLA_PACIENTE  varchar(10) 
alter table [SIGSALUD].[dbo].[ATENCIONC] add HEMOGLOBINA  varchar(10) 
alter table [SIGSALUD].[dbo].[ATENCIONC] add FECHA_RESULTADO_HEMOGLOBINA varchar(10) 



/*
alter table [SIGSALUD].[dbo].[ATENCIONC] add PERIMETRO_ABDOMINAL numeric(3,2)   DEFAULT ((0))
alter table [SIGSALUD].[dbo].[ATENCIONC] add PERIMETRO_CEFALICO  numeric(3,2)  DEFAULT ((0))
alter table [SIGSALUD].[dbo].[ATENCIONC] add PESO_PACIENTE  numeric(3,2)   DEFAULT ((0))
alter table [SIGSALUD].[dbo].[ATENCIONC] add TALLA_PACIENTE  numeric(2,2)  DEFAULT ((0))
alter table [SIGSALUD].[dbo].[ATENCIONC] add HEMOGLOBINA  numeric(3,2)  DEFAULT ((0))
alter table [SIGSALUD].[dbo].[ATENCIONC] add FECHA_RESULTADO_HEMOGLOBINA VARCHAR(10)  DEFAULT ((''))
*/




/*
UPDATE [SIGSALUD].[dbo].[ATENCIONC] SET PERIMETRO_ABDOMINAL = 0, PERIMETRO_CEFALICO = 0, HEMOGLOBINA = 0,FECHA_RESULTADO_HEMOGLOBINA = '', PESO_PACIENTE = 0, TALLA_PACIENTE = 0 
*/

/* agregar estas columnas en la vista : v_atenciond */

select * from [SIGSALUD].[dbo].[V_ATENCIOND]

