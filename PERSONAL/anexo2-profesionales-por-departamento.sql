/* dado el departamento, mostrar todos los medicos */
declare @lc_iddepartamento varchar(3) = '14'
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
declare @lc_servicios_de_departamento table (IdServDepartUnid int)
insert into @lc_servicios_de_departamento
SELECT IdServDepartUnid FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] WHERE IdDepartUnid = @lc_iddepartamento 
select CODIGO from [BDPERSONAL].[dbo].[ASISTENCIA]  
where MES =  @lnmes and AÑO = @lnanio and IdServDepartUnid in (SELECT IdServDepartUnid FROM @lc_servicios_de_departamento) group by CODIGO, IdServDepartUnid 
order by CODIGO asc







 declare @lc_iddepartamento varchar(3) = ?lid_depar
  DECLARE @lnanio INT = ?lnanio
  declare @lnmes int = ?lnmes
  declare @lc_servicios_de_departamento table (IdServDepartUnid int)
  insert into @lc_servicios_de_departamento
  SELECT IdServDepartUnid FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] WHERE IdDepartUnid = @lc_iddepartamento 
  select CODIGO, IdServDepartUnid  from [BDPERSONAL].[dbo].[ASISTENCIA]  
  where MES =  @lnmes and AÑO = @lnanio and IdServDepartUnid in (SELECT IdServDepartUnid FROM @lc_servicios_de_departamento) group by CODIGO 
  order by CODIGO asc
  
  



declare @lccodigo varchar(13) = '084096'
declare @lcactividad int = 41 /* Para CEM */
INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]
SELECT	'DIA' + convert(varchar(2), ROW_NUMBER() OVER(order by dia)) AS NUMERO_DIA, 
   ISNULL(([BDPERSONAL].[dbo].[FN_ACTIVIDAD_ASIST_1](DIA, @lnmes, @lnanio,  @lccodigo, @lcactividad) ),0) as CEM
        FROM [BDPERSONAL].[dbo].[ASISTENCIA]  where	AÑO = @lnanio  and	mes = @lnmes  and codigo = @lccodigo  order by dia

SELECT * FROM [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]        



-- INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]([NUMERO_DIA],[CEM])


/*
SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] 
WHERE MES = @lnmes AND ANIO = @lnanio and codigo = @lccodigo order by DIA 

----- 
truncate table [BDPERSONAL].[dbo].[TMP_CUENTA_CEM] 
-----
*/
        
        
	      