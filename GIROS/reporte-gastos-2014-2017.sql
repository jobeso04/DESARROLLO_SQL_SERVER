/****** Script para el comando SelectTopNRows de SSMS  ******/


SELECT Cpm_Cta, b.ncp_motivo, Cpm_Comp, Cpm_Descri, Cpm_Monto, Periodo   FROM [GIROS].[dbo].[Cp_Metas]  a left join 
[GIROS].[dbo].[Nume_CP] b on a.Cpm_Cta = b.ncp_cta 
where Periodo >= '2014' order by Cpm_Cta 


SELECT [Ncp_Cta]
      ,[Ncp_NInicial]
      ,[Ncp_FechaI]
      ,[Ncp_Motivo]
      ,[Ncp_NActual]
      ,[Chek]
      ,[IDNUME_CP]
  FROM [GIROS].[dbo].[Nume_CP]

