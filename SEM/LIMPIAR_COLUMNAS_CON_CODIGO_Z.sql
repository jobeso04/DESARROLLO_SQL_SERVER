/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [idkey]
      ,[hospitalizacion_id]
      ,[renipress]
      ,[e_ubig]
      ,[e_cdpto]
      ,[e_cprov]
      ,[e_cdist]
      ,[cod_disa]
      ,[cod_red]
      ,[cod_mred]
      ,[numhc]
      ,[nomb]
      ,[apell]
      ,[doc_iden]
      ,[etnia]
      ,[sexo]
      ,[edad]
      ,[tipoedad]
      ,[ubigeo]
      ,[cdpto]
      ,[cprov]
      ,[cdist]
      ,[fecing]
      ,[fecegr]
      ,[totalest]
      ,[ups]
      ,[condicion]
      ,[financia]
      ,[coddiag1]
      ,[coddiag2]
      ,[coddiag3]
      ,[coddiag4]
      ,[cemorb1]
      ,[cemorb2]
      ,[codcpt1]
      ,[codcpt2]
      ,[codcpt3]
      ,[codcpt4]
      ,[estadio]
      ,[valor_t]
      ,[valor_n]
      ,[valor_m]
      ,[tratamien]
      ,[prof_parto]
      ,[fecparto]
      ,[rnvivo]
      ,[rnmuerto]
      ,[codpsal]
      ,[fechareg]
      ,[estado]
  FROM [SIGSALUD].[dbo].[SEMEGRESO]
  
select idkey, cemorb1, cemorb2, codcpt1, codcpt2, codcpt3, codcpt4 from [SIGSALUD].[dbo].[SEMEGRESO]

/* update [SIGSALUD].[dbo].[SEMEGRESO] set cemorb2 = 'Z381' where idkey = 141 */

/* Primero */
select idkey, cemorb1, cemorb2,codcpt1, codcpt2, codcpt3, codcpt4
   from [SIGSALUD].[dbo].[SEMEGRESO] where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) = 'Z' and (codcpt1 = '0' and codcpt2 = '0')
update [SIGSALUD].[dbo].[SEMEGRESO] set codcpt1 = cemorb1, codcpt2 = cemorb2, cemorb1 = '', cemorb2 = ''
        where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) = 'Z' and (codcpt1 = '0' and codcpt2 = '0')


/* Segundo */
select idkey, cemorb1, cemorb2,codcpt1, codcpt2, codcpt3, codcpt4
   from [SIGSALUD].[dbo].[SEMEGRESO] where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 = '0' and codcpt2 = '0')
update [SIGSALUD].[dbo].[SEMEGRESO] set codcpt1 = cemorb1, codcpt2 = '', cemorb1 = '', cemorb2 = ''
        where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 = '0' and codcpt2 = '0')
select idkey, cemorb1, cemorb2,codcpt1, codcpt2, codcpt3, codcpt4
   from [SIGSALUD].[dbo].[SEMEGRESO] where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 = '0' and codcpt2 = '0')
   

/* Tercero */
select idkey, cemorb1, cemorb2,codcpt1, codcpt2, codcpt3, codcpt4
   from [SIGSALUD].[dbo].[SEMEGRESO] where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 <> '0' and codcpt2 = '0')
   
update [SIGSALUD].[dbo].[SEMEGRESO] set codcpt1 = cemorb1, codcpt2 = codcpt1, cemorb1 = '', cemorb2 = ''
       where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 <> '0' and codcpt2 = '0')
     
/* Cuarto */
select idkey, cemorb1, cemorb2,codcpt1, codcpt2, codcpt3, codcpt4
   from [SIGSALUD].[dbo].[SEMEGRESO] where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 <> '0' and codcpt2 <> '0')
update [SIGSALUD].[dbo].[SEMEGRESO] set codcpt1 = cemorb1, codcpt2 = codcpt1, codcpt3 = codcpt2, cemorb1 = ''
       where SUBSTRING(cemorb1,1,1) = 'Z' and SUBSTRING(cemorb2,1,1) <> 'Z' and (codcpt1 <> '0' and codcpt2 <> '0')

       
/* Quinto */
update [SIGSALUD].[dbo].[SEMEGRESO] set codcpt1 = '' where codcpt1 = '0'
update [SIGSALUD].[dbo].[SEMEGRESO] set codcpt2 = '' where codcpt2 = '0'
       