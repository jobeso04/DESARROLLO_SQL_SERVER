/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [swc_trf_codigo],[swc_srv_codigo],[swc_est_alm_codigo],[swc_trf_cantidadregistros],[swc_trf_fechainicio],[swc_trf_fechafinal],[swc_trf_fecharegistro],[swc_trf_estado]
  FROM [BDCENARESMINSA].[dbo].[s
  wc_cli_transferencia] order by swc_trf_codigo desc