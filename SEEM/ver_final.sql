use SIGSALUD
  SELECT substring([renipress],1,10) as renipress, substring([e_ubig],1,6) as e_ubig,substring([e_cdpto],1,2) as e_cdpto,substring([e_cprov],1,2) as e_cprov, substring([e_cdist],1,2) e_cdist,
  SUBSTRING([cod_disa],1,2) as cod_disa, substring([cod_red],1,2) as cod_red, substring([cod_mred],1,2) as cod_mred, substring([numhc],1,15) as numhc, substring([nomb],1,50) as nomb,substring([apell],1,50) as apell, substring([doc_iden],1,11) as doc_iden,
  substring([etnia],1,2) as etnia,substring([sexo],1,1) sexo,CONVERT(numeric(2), edad) edad, substring([tipoedad],1,1) as tipoedad, substring([ubigeo],1,6) ubigeo, 
    substring([cdpto],1,2) cdpto, substring([cprov],1,2) cprov,  substring([cdist],1,2) cdist, (substring([fecing],1,6) + substring([fecing],9,2)) fecing, (substring([fecegr],1,6) + substring([fecegr],9,2)) fecegr, convert(numeric(3), [totalest]) totalest,
        substring([ups],1,6) ups,substring([condicion],1,1) condicion,  substring([financia],1,2) financia, substring([coddiag1],1,5) coddiag1,
        SUBSTRING([coddiag2],1,5) coddiag2 ,SUBSTRING([coddiag3],1,5) coddiag3, SUBSTRING([coddiag4],1,5) coddiag4, SUBSTRING([cemorb1],1,5) cemorb1, SUBSTRING([cemorb2],1,5) cemorb2,
        SUBSTRING([codcpt1],1,5) [codcpt1], SUBSTRING([codcpt2],1,5) [codcpt2], SUBSTRING([codcpt3],1,5) [codcpt3], SUBSTRING([codcpt4],1,5) [codcpt4], substring([estadio],1,1) estadio, substring([valor_t],1,3) valor_t, substring([valor_n],1,3) valor_n, substring([valor_m],1,3) valor_m, substring([tratamien],1,3) tratamien,
         SUBSTRING([prof_parto],1,2) prof_parto, substring([fecparto],1,8) fecparto, CONVERT(numeric(1), [rnvivo]) rnvivo,  CONVERT(numeric(1), [rnmuerto]) [rnmuerto], 
         substring([codpsal],1,11) codpsal, [fechareg], convert(numeric(1), [estado]) [estado]
           FROM [SIGSALUD].[dbo].[SEMEGRESO]
        
        
        
  SELECT substring(CODPSAL,1,11) as codpsal, SUBSTRING(NOMBRE,1,40) nombre, plaza, substring(COD_2000,1,10) COD_2000, 
    substring(COD_PROF,1,2) COD_PROF, substring(COD_COND,1,1) COD_COND, FECHA_ING, FECHA_BAJA FROM [SIGSALUD].[dbo].[SEMMEDICOS]
    
    
    select * from dbo.SEMMEDICOS