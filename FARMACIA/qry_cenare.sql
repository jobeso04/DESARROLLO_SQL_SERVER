USE master
IF OBJECT_ID('BDCENARESMINSA') IS NOT NULL
   DROP DATABASE BDCENARESMINSA
GO
Create DataBase BDCENARESMINSA
GO
USE BDCENARESMINSA
GO
IF OBJECT_ID('swc_cli_transferencia') IS NOT NULL
   DROP TABLE swc_cli_transferencia
GO
CREATE TABLE swc_cli_transferencia(
	swc_trf_codigo int identity(1,1) primary key ,
	swc_srv_codigo int not null,
	swc_est_alm_codigo int not null,
	swc_trf_cantidadregistros int,
	swc_trf_fechainicio datetime not null,
	swc_trf_fechafinal datetime not null,
	swc_trf_fecharegistro datetime default(getdate()),
	swc_trf_estado int default(1) not null,
)	
go
IF OBJECT_ID('swc_cli_contacto') IS NOT NULL
   DROP TABLE swc_cli_contacto
GO
CREATE TABLE swc_cli_contacto(
	swc_ctt_codigo int identity(1,1) primary key,
	swc_srv_codigo int not null,
	swc_est_alm_codigo int not null,--swc_ctt_almcod varchar(10) not null,
	swc_ctt_apellidosnombres varchar(300) not null,
	swc_ctt_correo varchar(300) not null,
	swc_ctt_telefonofijo varchar(100),
	swc_ctt_telefonocelular varchar(100),
	swc_ctt_cargo varchar(100),
	swc_ctt_fecharegistro datetime default(getdate()) not null,
	swc_ctt_estado int default(1) not null,
)
go
IF OBJECT_ID('swc_cli_configuracion') IS NOT NULL
   DROP TABLE swc_cli_configuracion
GO
Create Table swc_cli_configuracion(
swc_cfg_codigo int identity(1,1) not null,
swc_srv_codigo int not null,
--swc_est_codigo int not null,
swc_est_alm_codigo int not null,
swc_cta varchar(200) not null,
swc_cta_clave varchar(300),--swc_cta_clave varbinary(256),
swc_cfg_fecharegistro datetime default(getdate()) not null,
swc_cfg_fechaactualizacion datetime default(getdate()) not null,
swc_cfg_estado int default(1) not null,
swc_prm1 varchar(300), --ip
swc_prm2 varchar(300),--mac
swc_prm3 varchar(300), --host
)
go
IF OBJECT_ID('swc_cli_logerrores') IS NOT NULL
   DROP TABLE swc_cli_logerrores
GO
CREATE TABLE swc_cli_logerrores(
	swc_log_codigo int identity(1,1) primary key,
	swc_trf_codigo int,
	swc_log_numero int,
	swc_log_severidad int,
	swc_log_mensaje varchar(max) not null, 
	swc_log_fecharegistro datetime default(getdate())
)
GO
CREATE TABLE PlantillaOrigenICIDIARIO (
	codigo_eje	varchar(255) null,
	codigo_pre	varchar(11) null,
	tipsum			varchar(1) null,
	annomes		numeric(8,0) null,
	codigo_med	 varchar(7) null,
	saldo			numeric(8,0) null,
	precio			numeric(18,2) null,
	ingre				numeric(8,0) null,
	reingre			numeric(8,0) null,
	venta			numeric(8,0) null,
	sis				numeric(8,0) null,
	intersan		numeric(8,0) null,
	fec_perd		numeric(8,0) null,
	defnac			numeric(8,0) null,
	exo				numeric(8,0) null,
	soat				numeric(8,0) null,
	otr_conv		numeric(8,0) null,
	devol			numeric(8,0) null,
	vencido		numeric(8,0) null,
	merma			numeric(8,0) null,
	credhosp		numeric(8,0) null,
	distri				numeric(8,0) null,
	transf			numeric(8,0) null,
	ventainst		numeric(8,0) null,
	dev_ven		numeric(8,0) null,
	dev_merma	numeric(8,0) null,
	otras_sal		numeric(8,0) null,
	stock_fin		numeric(8,0) null,
	stock_fin1	numeric(8,0) null,
	req				numeric(8,0) null,
	total				numeric(8,0) null,
	fec_exp		date null,
	do_saldo		numeric(8,0) null,
	do_ingre		numeric(8,0) null,
	do_con			numeric(8,0) null,
	do_otr			numeric(8,0) null,
	do_tot			numeric(8,0) null,
	do_stk			numeric(8,0) null,
	do_fecexp	varchar(255) null,
	fecha			varchar(255) null,
	usuario			varchar(255) null,
	indiproc		varchar(255) null,
	sit					varchar(255) null,
	indisiga			varchar(255) null,
	dstkcero		varchar(255) null,
	mcodigo		varchar(255) null,
	inv_feb			varchar(255) null,
	fechap			date null
   ,consumo int
)
go
select * from swc_cli_transferencia
select * from swc_cli_contacto
select * from swc_cli_configuracion
select *  from PlantillaOrigenICIDIARIO
go
/*****************************************Creación Procedimientos Almacenados***********************/
Create Procedure [dbo].[uspicieess_Entidad_Insertar]
@swc_srv_codigo int,
@swc_est_alm_codigo int,
@swc_cta varchar(200),
@swc_cta_clave varchar(300),
@swc_prm1 varchar(300),
@swc_prm2 varchar(300),
@swc_prm3 varchar(300)
As
Begin
INSERT INTO swc_cli_configuracion
                      ( swc_srv_codigo, swc_est_alm_codigo, swc_cta, swc_cta_clave,  swc_prm1, swc_prm2,swc_prm3)
VALUES         (@swc_srv_codigo, @swc_est_alm_codigo, @swc_cta, @swc_cta_clave,	@swc_prm1,@swc_prm2,@swc_prm3)
end
--execute [uspicieess_Entidad_Insertar] 1,1,'sa','123','aaa','3333'
select * from swc_cli_configuracion
go
Create Procedure [dbo].[uspicieess_IdentificacionEntidad]
--@swc_srv_codigo int,
--@swc_est_codigo 

As
Begin
set nocount on
SELECT 
	swc_est_alm_codigo,swc_srv_codigo,swc_prm1,	swc_prm2,swc_prm3
FROM swc_cli_configuracion where --swc_srv_codigo=@swc_srv_codigo and swc_est_codigo=@swc_est_codigo
	swc_cfg_estado=1
end
go
execute uspicieess_IdentificacionEntidad
go
select * from swc_cli_configuracion
--EXPORTAR INFORMACION DESDE EXCEL
GO
Create Procedure [dbo].[uspicieess_LeerDataOrigen_PorExportar_A_Cenares]
as
begin
	set nocount on
	IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND  DB_NAME() = 'BDSERVICIOCLIENTE' AND name = 'PlantillaOrigenICIDIARIO')
		SELECT     codigo_eje, codigo_pre, tipsum, annomes, codigo_med, saldo, precio, ingre, reingre, venta, sis, intersan, fec_perd, defnac, exo, soat, otr_conv, devol, vencido, merma, credhosp, distri, transf, 
							  ventainst, dev_ven, dev_merma, otras_sal, stock_fin, stock_fin1, req, total, fec_exp, do_saldo, do_ingre, do_con, do_otr, do_tot, do_stk, do_fecexp, fecha, usuario, indiproc, sit, indisiga, dstkcero, 
							  mcodigo, inv_feb, fechap,0 consumo
		FROM         PlantillaOrigenICIDIARIO
	else
		--PRINT 'La tabla origen "PlantillaOrigenICIDIARIO'' para su exportacion no existe'	
		select -1
end
go
execute uspicieess_LeerDataOrigen_PorExportar_A_Cenares
go
Create Procedure [dbo].[uspicieess_Contacto]
@swc_srv_codigo int, 
--@swc_ctt_almcod varchar(100), 
@swc_est_alm_codigo int,
@swc_ctt_apellidosnombres varchar(100), 
@swc_ctt_correo varchar(100), 
@swc_ctt_telefonofijo varchar(100), 
@swc_ctt_telefonocelular varchar(100), 
@swc_ctt_cargo varchar(100)
As
Begin
INSERT INTO swc_cli_contacto
               (swc_srv_codigo, swc_est_alm_codigo, swc_ctt_apellidosnombres, swc_ctt_correo, swc_ctt_telefonofijo, swc_ctt_telefonocelular, swc_ctt_cargo)
VALUES   (@swc_srv_codigo, @swc_est_alm_codigo, @swc_ctt_apellidosnombres, @swc_ctt_correo, @swc_ctt_telefonofijo, @swc_ctt_telefonocelular, @swc_ctt_cargo)
End
go
Create procedure [dbo].[usp_Registro_TransferenciaErrores]
     @accion int,   
     @swc_srv_codigo int,
	 @swc_est_alm_codigo int,
	 @swc_trf_cantidadregistros int,
	 @swc_trf_fechainicio datetime,
     @error_message varchar(100),
     @error_number int,
     @error_severity int
 
as
Begin
	DECLARE @Vgeneracodigo int=0
	if @accion=1 
		INSERT INTO dbo.swc_cli_transferencia(swc_srv_codigo,swc_est_alm_codigo, swc_trf_cantidadregistros,swc_trf_fechainicio,swc_trf_fechafinal)
		VALUES     (@swc_srv_codigo,@swc_est_alm_codigo,@swc_trf_cantidadregistros,@swc_trf_fechainicio,getdate())				
	else
	begin
		INSERT INTO dbo.swc_cli_transferencia(swc_srv_codigo,swc_est_alm_codigo, swc_trf_cantidadregistros, swc_trf_fechainicio, swc_trf_fechafinal,swc_trf_estado)
		VALUES     (@swc_srv_codigo,@swc_est_alm_codigo,0,getdate(),getdate(),2)				
		set @Vgeneracodigo=@@identity --devuelve el último valor de identidad insertado.
		INSERT INTO  dbo.swc_cli_logerrores(swc_trf_codigo, swc_log_numero, swc_log_severidad, swc_log_mensaje)
		VALUES (@VGENERACODIGO,@error_number,@error_severity,@error_message)
	end
	--VALUES (@VGENERACODIGO,ERROR_NUMBER(),ERROR_SEVERITY(),ERROR_MESSAGE())
End
GO
select * from swc_cli_configuracion
delete from swc_cli_configuracion
--INSERT INTO swc_cli_configuracion(swc_srv_codigo,swc_est_codigo,swc_cta,swc_cta_clave) VALUES(1,1,'0010','$00100010$')
--execute uspicieess_Entidad_Insertar 1,1,'sa','123'
--Update swc_cli_configuracion set swc_est_codigo=1,swc_cta='0010',swc_cta_clave='$00100010$'
GO
execute uspicieess_LeerDataOrigen_PorExportar_A_Cenares
go
select * from PlantillaOrigenICIDIARIO 
--Update PlantillaOrigenICIDIARIO  set fechap='2017-07-14'
go
-------------------ultimo-----------------------
CREATE  TYPE TipoContacto AS TABLE (
swc_srv_codigo int not null,
swc_est_alm_codigo int not null,
swc_ctt_apellidosnombres varchar(300) not null,
swc_ctt_correo varchar(300) not null,
swc_ctt_telefonofijo varchar(100),
swc_ctt_telefonocelular varchar(100),
swc_ctt_cargo varchar(100)
)
go
Create PROCEDURE [dbo].[sp_insert_table_Contacto]
@Origen TipoContacto READONLY
As
Begin
 Insert Into swc_cli_contacto
 SELECT  swc_srv_codigo, swc_est_alm_codigo, swc_ctt_apellidosnombres,swc_ctt_correo, swc_ctt_telefonofijo, swc_ctt_telefonocelular, swc_ctt_cargo,GETDATE(),1
 FROM @Origen     
End
go
Select * from swc_cli_configuracion
go
select * from dbo.PlantillaOrigenICIDIARIO
--truncate table dbo.PlantillaOrigenICIDIARIO
go
Create Procedure [dbo].[uspicieess_Entidad_Existe]
as
select count(swc_cfg_codigo) from swc_cli_configuracion
----------
--go
--Insert Into dbo.PlantillaOrigenICIDIARIO
--SELECT     TOP (100)  codigo_eje, codigo_pre, tipsum, annomes, codigo_med, saldo, precio, ingre, reingre, venta, sis, intersan, fec_perd, defnac, exo, soat, otr_conv, devol, vencido, merma, credhosp, 
--                      distri, transf, ventainst, dev_ven, dev_merma, otras_sal, stock_fin, stock_fin1, req, total, fec_exp, do_saldo, do_ingre, do_con, do_otr, do_tot, do_stk, do_fecexp, fecha, usuario, indiproc, sit, 
--                      indisiga, dstkcero, mcodigo, inv_feb, fechap
--FROM         icidiario_201708
--go
--select * from dbo.PlantillaOrigenICIDIARIO

--Update dbo.PlantillaOrigenICIDIARIO set fechap='20170810',codigo_pre='023T123'
GO
USE BDCENARESMINSA
GO
Alter Procedure [dbo].[uspicieess_LeerDataOrigen_PorExportar_A_Cenares]
as
begin
	set nocount on
	--SELECT  codigo_eje, codigo_pre, tipsum, annomes, codigo_med, saldo, precio, ingre, reingre, venta, sis, intersan, fec_perd, defnac, exo, soat, otr_conv, devol, vencido, merma, credhosp, distri, transf, 
	--						  ventainst, dev_ven, dev_merma, otras_sal, stock_fin, stock_fin1, req, total, fec_exp, do_saldo, do_ingre, do_con, do_otr, do_tot, do_stk, do_fecexp, fecha, usuario, indiproc, sit, indisiga, dstkcero, 
	--						  mcodigo, inv_feb, fechap,0 consumo
	--FROM         BDMENU.dbo.icidiario_201708 WHERE FECHAP='20170814'

end
GO
EXECUTE [uspicieess_LeerDataOrigen_PorExportar_A_Cenares]


--update BDMENU.dbo.icidiario_201708 set codigo_pre='06207', codigo_eje='06207' where FECHAP='20170814'