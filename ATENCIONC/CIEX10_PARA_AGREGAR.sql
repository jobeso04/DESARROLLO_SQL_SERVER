SELECT COD_CAT, COD_ENF, RTRIM(RTRIM(COD_CAT) + RTRIM(COD_ENF))  AS CODIGO1,   
     RTRIM(SUBSTRING(DESC_ENF, LEN(RTRIM(RTRIM(COD_CAT) + RTRIM(COD_ENF)) + ' - ') + 1, 100)) AS CDESCRIPCION, desc_enf
        FROM [SIGSALUD].[dbo].[CIEX_AGREGAR]


SELECT * FROM CIEXHIS WHERE CODIGO = 'B59X'

SELECT * FROM CIEXHIS WHERE CODIGO like 'B59%'

SELECT * FROM [SIGSALUD].[dbo].[CIEX_AGREGAR] where sagregar = 'E'
SELECT * FROM [SIGSALUD].[dbo].[CIEX_AGREGAR] where sagregar = 'N'
SELECT * FROM [SIGSALUD].[dbo].[CIEX_AGREGAR] where sagregar = 'A'

select * from CIEXHIS where CODCAT = 'U90'



UPDATE [SIGSALUD].[dbo].[CIEX_AGREGAR] SET sagrego = 'E' WHERE RTRIM(RTRIM(COD_CAT) + RTRIM(COD_ENF)) = 'B59X'
          

INSERT INTO [SIGSALUD].[dbo].[CIEXHIS]([CODORD],[CODIGO],[NOMBRE],[SEXO],[MIN_EDAD],[MIN_TIPO],[MAX_EDAD],[MAX_TIPO],[EST],[CLASE]   ,[CODCAT]
           ,[FORMULA]
           ,[EST1])
     VALUES
           (<CODORD, float,>
           ,<CODIGO, nvarchar(10),>
           ,<NOMBRE, varchar(180),>
           ,<SEXO, nvarchar(2),>
           ,<MIN_EDAD, float,>
           ,<MIN_TIPO, nvarchar(1),>
           ,<MAX_EDAD, float,>
           ,<MAX_TIPO, nvarchar(1),>
           ,<EST, nvarchar(1),>
           ,<CLASE, nvarchar(1),>
           ,<CODCAT, nvarchar(3),>
           ,<FORMULA, nvarchar(30),>
           ,<EST1, char(1),>)
GO

