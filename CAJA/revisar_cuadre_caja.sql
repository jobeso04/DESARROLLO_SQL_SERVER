declare @ldfecha datetime = CONVERT(DATETIME, '2018-01-19', 101)
declare @lcmodulo varchar(50) = 'FARMACIA'
declare @lc_numero_1_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO) 
declare @lc_numero_1_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
declare @lntotal_s1 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo)
declare @lc_numero_2_inicio varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO)
declare @lc_numero_2_fin varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
declare @lntotal_s2 numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo)
    -- INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])
select convert(varchar(10), @ldfecha, 103)  fecha, @lc_numero_1_inicio desde, @lc_numero_1_fin hasta, @lntotal_s1 monto
      union all
select convert(varchar(10), @ldfecha, 103) , @lc_numero_2_inicio desde, @lc_numero_2_fin hasta, @lntotal_s2 monto
   --- VB 6
   /*

DECLARE @lc_fecha_no_17 datetime = CONVERT(DATETIME, '2018-01-19', 101)
declare @lc_numero_1_inicio_nf varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO) 
declare @lc_numero_1_fin_nf varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
declare @lntotal_s1_nf numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo)
declare @lc_numero_2_inicio_nf varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO)
declare @lc_numero_2_fin_nf varchar(11) = (select top 1 numero from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO desc)
declare @lntotal_s2_nf numeric(18,2) = (select SUM(total) as total from [SIGSALUD].[dbo].[PAGOC]  where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '002' and rtrim(modulo) =  @lcmodulo)
*/


select top 1 numero from [SIGSALUD].[dbo].[PAGOC]   where FECHA = @ldfecha  and estado = '2' and substring(NUMERO,1,3) = '001' and rtrim(modulo) =  @lcmodulo order by FECHA_REGISTRO



  
   
 DECLARE @lc_fecha_no_17 datetime = CONVERT(DATETIME, '2018-01-19', 101)
 declare @lc_numero_1_inicio_nf varchar(11) = (select top 1 D.NUMERO FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
      LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR  LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID 
       WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'      and substring(D.NUMERO,1,3) = '001' 
              order by D.FECHA_REGISTRO )
              
 declare @lc_numero_1_fin_nf varchar(11) = (select top 1 D.NUMERO FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
      LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR  LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID 
       WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'      and substring(D.NUMERO,1,3) = '001' 
              order by D.FECHA_REGISTRO DESC)
 
 declare @lc_numero_1_monto_nf varchar(11) = (select SUM( A.IMPORTE)  FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
      LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR  LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID 
       WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'      and substring(D.NUMERO,1,3) = '001')


 declare @lc_numero_2_inicio_nf varchar(11) = (select top 1 D.NUMERO FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
      LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR  LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID 
       WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'      and substring(D.NUMERO,1,3) = '002' 
              order by D.FECHA_REGISTRO )
              
 declare @lc_numero_2_fin_nf varchar(11) = (select top 1 D.NUMERO FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
      LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR  LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID 
       WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'      and substring(D.NUMERO,1,3) = '002' 
              order by D.FECHA_REGISTRO DESC)
 
 declare @lc_numero_2_monto_nf varchar(11) = (select SUM( A.IMPORTE)  FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
      LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR  LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID 
       WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'      and substring(D.NUMERO,1,3) = '002')

 INSERT INTO [SIGSALUD].[dbo].[TM_RESUL_CAJA]([fecha],[desde],[hasta],[monto])     
select @lc_fecha_no_17, @lc_numero_1_inicio_nf, @lc_numero_1_fin_nf, @lc_numero_1_monto_nf
union all 
select @lc_fecha_no_17, @lc_numero_2_inicio_nf, @lc_numero_2_fin_nf, @lc_numero_2_monto_nf 
 
 
 
 SELECT CONVERT(VARCHAR(10), D.FECHA,103) AS FECHA, D.NUMERO,  A.IMPORTE FROM [SIGSALUD].[dbo].[PAGOD] A  LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM
 LEFT JOIN [SIGSALUD].[dbo].[CLASIFICADOR] C ON B.CLASIFICADOR = C.CLASIFICADOR
 LEFT JOIN [SIGSALUD].[dbo].[PAGOC] D ON A.PAGOID = D.PAGOID
 WHERE  D.FECHA = @lc_fecha_no_17 and d.ESTADO > '1' AND C.CLASIFICADOR = '1.3.1.6.12'  AND SUBSTRING(A.ITEM,1,2) <> '17'
 and substring(D.NUMERO,1,3) = '001' 
 
 
 select * from [SIGSALUD].[dbo].[TM_RESUL_CAJA]
 
     delete from [SIGSALUD].[dbo].[TM_RESUL_CAJA] WHERE desde = '' AND hasta = '' AND monto = 0