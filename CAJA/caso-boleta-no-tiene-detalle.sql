/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [PAGOID]
      ,[FECHA]
      ,[FECHA_REGISTRO]
      ,[TIPO_DOCUMENTO]
      ,[NUMERO]
      ,[PACIENTE]
      ,[NOMBRE]
      ,[RUC]
      ,[DIRECCION]
      ,[CHEQUE]
      ,[BANCO]
      ,[CAJA]
      ,[TURNO]
      ,[CATEGORIA]
      ,[TIPO_PAGO]
      ,[CONSULTORIO]
      ,[TURNO_CONSULTA]
      ,[MEDICO]
      ,[USUARIO]
      ,[SUBTOTAL2]
      ,[SUBTOTAL]
      ,[DESCUENTO]
      ,[IGV]
      ,[TOTAL]
      ,[MOTIVOANUL]
      ,[MODULO]
      ,[ORDENID]
      ,[LIQUIDACIONID]
      ,[ESTADO]
      ,[SYSINSERT]
      ,[SYSUPDATE]
      ,[SYSDELETE]
      ,[HORA_REGISTRO]
      ,[USUARIOORDEN]
      ,[ALMACEN]
      ,[TIPO_AUX]
      ,[NRO_EXONERACION]
      ,[ORIGEN]
      ,[CUENTAID]
  FROM [SIGSALUD].[dbo].[PAGOC] where NOMBRE like 'nuñez garcia%' order by FECHA desc
  
  use SIGSALUD
  select * from pagoc where pagoid = '17104547'
  select * from pagod where pagoid = '17104547'
  
  
  
  select convert(varchar(10), fecha, 103) as fecha, case when estado = '2' then ' BOLETA PAGADA - TODO OK' WHEN estado = '0' THEN 'BOLETA ANULADA' else 'ERROR DE REGISTRO' END AS ESTADO, NUMERO, NOMBRE, TOTAL, upper(T_PAGO) as TIPO_PAG
         from V_PAGOC where ordenid = '170150468 '
         
         
select * from PAGOC where pagoid = '17104614'  

select * from PAGOC where NUMERO = '002-1011654'

select * from PAGOC where NUMERO = '002-1011654'
delete from  PAGOD where PAGOID = '17104593'
delete from  PAGOc where PAGOID = '17104593'



select * from PAGOC where NUMERO = '001-1816871'


delete from PAGOC where pagoid = '17104614'
delete from PAGOd where pagoid = '17104614'

select * from PAGOd where NUMERO = '001-1816871'


select * from ORDENC where ORDENID = '1710096591'

select * from ORDENC order by fecha desc


select * from ORDENC order by FECHA desc

select * from ordenc where NOMBRE like 'cortez%' order by FECHA desc

select * from ORDENC where ORDENID = '1717096591'


171709591







       
         