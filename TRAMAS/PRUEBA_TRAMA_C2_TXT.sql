	  declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
	  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
	  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
	  declare @lccodigo_ipress varchar(8) = '00005947'
	  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO_PAC as SEXO_PACIENTE, GRUPO_EDAD, UPPER(DIAGNOSTICO_DEFINITIVO) AS DIAGNOSTICO_DEFINITIVO, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_M_C2]
	  WHERE DIAGNOSTICO_DEFINITIVO IS NOT NULL AND DIAGNOSTICO_DEFINITIVO <> ''
	  UNION ALL
      SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO_PAC as SEXO_PACIENTE, GRUPO_EDAD, UPPER(DIAGNOSTICO_DEFINITIVO) AS DIAGNOSTICO_DEFINITIVO, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_F_C2]
      WHERE DIAGNOSTICO_DEFINITIVO IS NOT NULL AND DIAGNOSTICO_DEFINITIVO <> ''
