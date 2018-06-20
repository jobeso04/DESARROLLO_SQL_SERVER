  /* PARA ABRIR POR DEPARAMENTO   */
  /* ABRIR */
  
  DECLARE @lid_departramento varchar(2) = '19'
  declare @lnmes int = 12
  declare @lnanio int = 2017
  declare @lcabrir_cerrar varchar(1) = '1'  /* 4 para cerrarr -- 1 para abrir */
  update [BDPERSONAL].[dbo].[ASISTENCIA] set indicador = @lcabrir_cerrar  where MES = @lnmes and AÑO = @lnanio and IdServDepartUnid in 
  (SELECT IdServDepartUnid  FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] where IdDepartUnid = @lid_departramento)
  



/* CERRAR  */
 update [BDPERSONAL].[dbo].[ASISTENCIA] set indicador = '4' where MES = 12 and AÑO = 2017 and IdServDepartUnid in 
(SELECT IdServDepartUnid  FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] where IdDepartUnid = 19)



/* PARA PONER DE VACACIONE A TODO UN PERSONAL */

update [BDPERSONAL].[dbo].[ASISTENCIA] set CODACT = 'V' where año = 2017 and mes = 12 and codigo = '084128 '

