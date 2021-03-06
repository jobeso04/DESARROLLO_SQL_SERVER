/* crear table con datos */
select * from  [SIGSALUD].[dbo].[CLASI1]

drop table  [SIGSALUD].[dbo].[CLASI1]
delete from [SIGSALUD].[dbo].[CLASIFICADOR] where clasificador in ('1.3.24.14','1.3.24.16','1.3.32.1'  )

			INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
			     VALUES ('1.3.24.14', 'CERTIFICADOS', '101', '125', '',1)
			INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
			     VALUES ('1.3.24.16', 'CARNET Y/O TARJETA DE ATENCION', '101', '125', '',1)
			INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
			     VALUES ('1.3.32.1', 'SERVICIO DE TRANSPORTE', '101', '125', '',1)
use sigsalud 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASI1](
	[CLASI] [nvarchar](255) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51194   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51195   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51197   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51198   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51199   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51201   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51204   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51211   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51213   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'51224   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60013   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60013   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60015   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60015   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60015   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60016   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60017   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60017   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60018   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60019   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60021   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60021   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60025   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60025   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60026   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60030   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60037   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60039   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60039   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60043   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60054   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'60062   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'63175   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'63181   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'63589   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'63590   ')
INSERT [dbo].[CLASI1] ([CLASI]) VALUES (N'63590   ')

UPDATE [SIGSALUD].[dbo].[ITEM] SET CLASIFICADOR = '1.3.24.14'  WHERE ITEM IN (select clasi from  [SIGSALUD].[dbo].[CLASI1])

UPDATE [SIGSALUD].[dbo].[ITEM] SET CLASIFICADOR = '1.3.24.16'  WHERE ITEM IN ('51244', '60027')   

UPDATE [SIGSALUD].[dbo].[ITEM] SET CLASIFICADOR = '1.3.32.1'  WHERE ITEM IN ('50000', '50001', '50002', '50003', '50005', '50007', '50008',
  '50009', '50010', '50011', '63591', '63591', '63627', '63628', '63628', '63629', '63630')

UPDATE [SIGSALUD].[dbo].[ITEM] SET CLASIFICADOR = '1.3.34.11'  WHERE ITEM IN ('50016', '50017', '50018', '50019', '50020', '50021', 
'50023', '50024', '50026', '50028', '50029', '50030', '50031', '50032', '50035', '50037', '50038', '50039', '50040', '50043',
'50048', '50050', '50054', '50059', '51231', '51233', '51234', '51235', '51236', '51237', '51238', '51239', '51240', '51241', '51247',
'99201')   

UPDATE [SIGSALUD].[dbo].[ITEM] SET CLASIFICADOR = '1.3.34.12'  WHERE ITEM IN ('50033', '51134', '51136', '51137', '51145', '51147', '51155', '51158', '51159', '51160', '51164', '51165', '51168',
'51169', '51172', '51174', '51175', '51177')

me quede en la 

UPDATE [SIGSALUD].[dbo].[ITEM] SET CLASIFICADOR = '1.3.24.16'  where item in  ('51244', '60027')

drop table [SIGSALUD].[dbo].[CLASI1]
