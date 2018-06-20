USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[FORMDET]    Script Date: 07/14/2016 17:04:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FORMDET](
	[codigo_eje] [char](3) NULL,
	[codigo_pre] [char](11) NULL,
	[tipsum] [char](1) NULL,
	[annomes] [char](6) NULL,
	[codigo_med] [char](7) NULL,
	[saldo] [numeric](8, 0) NULL,
	[precio] [numeric](9, 6) NULL,
	[ingre] [numeric](8, 0) NULL,
	[reingre] [numeric](8, 0) NULL,
	[venta] [numeric](8, 0) NULL,
	[sis] [numeric](8, 0) NULL,
	[intersan] [numeric](8, 0) NULL,
	[fac_perd] [numeric](8, 0) NULL,
	[defnac] [numeric](8, 0) NULL,
	[exo] [numeric](8, 0) NULL,
	[soat] [numeric](8, 0) NULL,
	[credhosp] [numeric](8, 0) NULL,
	[otr_conv] [numeric](8, 0) NULL,
	[devol] [numeric](8, 0) NULL,
	[vencido] [numeric](8, 0) NULL,
	[merma] [numeric](8, 0) NULL,
	[distri] [numeric](8, 0) NULL,
	[transf] [numeric](8, 0) NULL,
	[ventainst] [numeric](8, 0) NULL,
	[dev_ven] [numeric](8, 0) NULL,
	[dev_merma] [numeric](8, 0) NULL,
	[otras_sal] [numeric](8, 0) NULL,
	[stock_fin] [numeric](8, 0) NULL,
	[stock_fin1] [numeric](8, 0) NULL,
	[req] [numeric](8, 0) NULL,
	[total] [numeric](8, 0) NULL,
	[fec_exp] [date] NULL,
	[do_saldo] [numeric](8, 0) NULL,
	[do_ingre] [numeric](8, 0) NULL,
	[do_con] [numeric](8, 0) NULL,
	[do_otr] [numeric](8, 0) NULL,
	[do_tot] [numeric](8, 0) NULL,
	[do_stk] [numeric](8, 0) NULL,
	[do_fecexp] [date] NULL,
	[fecha] [date] NULL,
	[usuario] [char](15) NULL,
	[indiproc] [char](1) NULL,
	[sit] [char](1) NULL,
	[indisiga] [char](1) NULL,
	[dstkcero] [numeric](8, 0) NULL,
	[mptorepo] [numeric](10, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


