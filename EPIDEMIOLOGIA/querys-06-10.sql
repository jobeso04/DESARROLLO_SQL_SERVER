DECLARE @lcfechainicio datetime = convert(datetime, '2015-08-01', 101)


select @lcfechainicio 

CASE ltipoedad = '1'
        ledadanio = val(ALLTRIM(thisform.text10.Value))
        TEXT TO lted noshow
              declare @lnaio int = ?ledadanio
              select DateAdd(Year, -@lnaio, GETDATE()) as naci
         ENDTEXT
         lejecutabusca = sqlexec(gconecta,lted, "tedanio")
         SELECT tedanio
         ldfechanacimiento = tedanio.naci
         ledad = PADL(ALLTRIM(thisform.text10.Value),3,'0') + 'a' + '00m00d'
         THISFORM.TEXT5.Value = SUBSTR(DTOC(ldfechanacimiento),1,10)
         THISFORM.TEXT6.Value = ledad
         
      CASE ltipoedad = '2'
         ledadmes = val(ALLTRIM(thisform.text10.Value))
         TEXT TO ltedmes noshow
              declare @lmes int = ?ledadmes
              select DATEADD(month, -@lmes, GETDATE()) as naci
         ENDTEXT
         lejecutabusca = sqlexec(gconecta,ltedmes, "tedmes")
         SELECT tedmes
         ldfechanacimiento = tedmes.naci
         ledad = '00a' + PADL(ALLTRIM(thisform.text10.Value),2,'0') + 'm' + '00d'
         THISFORM.TEXT5.Value = SUBSTR(DTOC(ldfechanacimiento),1,10)
         THISFORM.TEXT6.Value = ledad

         
      CASE ltipoedad = '3'
         ledaddia = val(ALLTRIM(thisform.text10.Value))
         TEXT TO lteddia noshow
              declare @ldia int = ?ledaddia
              select DATEADD(day, -@ldia, GETDATE()) as naci
         ENDTEXT
         lejecutabusca = sqlexec(gconecta,lteddia, "teddia")
         SELECT teddia
         ldfechanacimiento = teddia.naci
         ledad = '00a' + '00m' + PADL(ALLTRIM(thisform.text10.Value),2,'0') + 'd'
         THISFORM.TEXT5.Value = SUBSTR(DTOC(ldfechanacimiento),1,10)
         THISFORM.TEXT6.Value = ledad