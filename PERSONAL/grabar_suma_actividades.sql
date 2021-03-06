 use BDPERSONAL
 DECLARE @lnanio INT = 2017
    declare @lnmes int = 10
    DECLARE @lccodigo VARCHAR(13) = '084226'
    declare @lcactividad varchar(1) = '4'
    INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]([NUMERO_DIA],[CEM])
    SELECT	'dia' + convert(varchar(2), ROW_NUMBER() OVER(order by dia)) AS NUMERO_DIA, 
     ISNULL(( [dbo].[FN_ACTIVIDAD_ASIST_1](DIA, @lnmes, @lnanio,  @lccodigo, @lcactividad) ),'  ') as CEM
      FROM	[BDPERSONAL].[dbo].[ASISTENCIA]  where	AÑO = @lnanio  and	mes = @lnmes  and codigo = @lccodigo  order by dia
      
      select * from [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]


  DECLARE @lnanio INT = 2017
  declare @lnmes int = 10
  SELECT CODIGO, COUNT(codigo) as cnt FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] WHERE MES = @lnmes AND ANIO = @lnanio GROUP BY CODIGO      
  
  
  select numero_dia as nro_dia, cem as valor from [BDPERSONAL].[dbo].[TMP_CUENTA_CEM]
  
  
  truncate table [BDPERSONAL].[dbo].[TMP_CUENTA_CEM] 
  TRUNCATE TABLE [BDPERSONAL].[dbo].[TMP_PRE_ANEXO1]
  
  
  
  SELECT * FROM [BDPERSONAL].[dbo].[TMP_CUENTA_CEM] 
  SELECT * FROM [BDPERSONAL].[dbo].[TMP_PRE_ANEXO1]
  
  INSERT INTO [BDPERSONAL].[dbo].[TMP_ANEXO1]([idactividad],[actividad],[dia1],[dia2],[dia3],[dia4],[dia5],[dia6],[dia7],[dia8],[dia9],[dia10],[dia11],[dia12],[dia13],
          [dia14], [dia15],[dia16],[dia17],[dia18],[dia19],[dia20],[dia21],[dia22],[dia23],[dia24],[dia25],[dia26],[dia27],[dia28],[dia29],[dia30],[dia31])
   select idactividad, ACTIVIDAD, sum(dia1) as dia1, sum(dia2) as dia2, sum(dia3) as dia3, sum(dia4) as dia4, sum(dia5) as dia5, sum(dia6) as dia6, sum(dia7) as dia7, 
     sum(dia8) as dia8, sum(dia9) as dia9, sum(dia10) as dia10, sum(dia11) as dia11, sum(dia12) as dia12, sum(dia13) as dia13, sum(dia14) as dia14, 
          sum(dia15) as dia15, sum(dia16) as dia16, sum(dia17) as dia17, sum(dia18) as dia18, sum(dia19) as dia19, sum(dia20) as dia20, sum(dia21) as dia21, 
                sum(dia22) as dia22, sum(dia23) as dia23, sum(dia24) as dia24, sum(dia25) as dia25, sum(dia26) as dia26, sum(dia27) as dia27, sum(dia28) as dia28, sum(dia29) as dia29, 
                        sum(dia30) as dia30, sum(dia31) as dia31   from [BDPERSONAL].[dbo].[TMP_PRE_ANEXO1]  group by idactividad, actividad 
                        
                        
truncate table [BDPERSONAL].[dbo].[TMP_ANEXO1]                                                
SELECT * FROM [BDPERSONAL].[dbo].[TMP_ANEXO1]                        
  