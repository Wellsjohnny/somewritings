
/*
https://technet.microsoft.com/pt-br/library/ms187953(v=sql.105).aspx
*/

PRINT N'########BASICAO DE VARIAVEIS'

-- Declarando uma variavel
DECLARE @MyCounter int;

-- Inicializando uma variavel
SET @MyCounter = 0;
SELECT @MyCounter
SET @MyCounter = 1;
SELECT @MyCounter
PRINT N'==================================='
-- A variavel pode ser referenciado durante  a execucao do lote


/*
FUN��ES
*/

/*
CHARINDEX - Pesquisa uma express�o para outra e retorna sua posi��o inicial, se for localizada.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/charindex-transact-sql

Exemplo:
CHARINDEX ( expressionToFind , expressionToSearch [ , start_location ] )   
*/

DECLARE @document varchar(64);  
SELECT @document = 'Reflectors are vital safety' + ' components of your bicycle.';

PRINT N'########FUNCAO CHARINDEX'
PRINT N'CHARINDEX: bicicle'
SELECT CHARINDEX('bicycle' ,  @document);

PRINT N'CHARINDEX: are'
SELECT CHARINDEX('are' ,  @document);

PRINT N'CHARINDEX: ARE'
SELECT CHARINDEX('ARE' ,  @document);

PRINT N'CHARINDEX: Ref'
SELECT CHARINDEX('Ref' ,  @document);

PRINT N'CHARINDEX: ect'
SELECT CHARINDEX('ect' ,  @document);
PRINT N'================================================================='
GO  



/*
CONCAT - Retorna uma cadeia de caracteres que � o resultado da concatena��o de dois ou mais valores.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/concat-transact-sql

Exemplo:
*/
PRINT N'########FUNCAO CONCAT'
SELECT CONCAT ( 'Happy ', 'Birthday ', 11, '/', '25' ) AS Result;  
PRINT N'================================================================='



PRINT N'########FUNCAO TRIM'
/*
LTRIM - Retorna uma express�o de caractere depois de remover espa�os em branco � esquerda.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/ltrim-transact-sql

Exemplo:
*/
SELECT LTRIM('     Five spaces are at the beginning of this string.') FROM sys.databases; 
PRINT N'================================================================='


PRINT N'########FUNCAO REPLACE'
/*
REPLACE - Substitui todas as ocorr�ncias de um valor da cadeia de caracteres especificado por outro valor de cadeia de caracteres.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/replace-transact-sql

Exemplo:
*/
SELECT REPLACE('abcdefghicde','cde','xxx');
PRINT N'================================================================='
GO  


PRINT N'########FUNCAO STRING'
/*
STR - Retorna dados de caractere convertidos de dados num�ricos.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/str-transact-sql

Exemplo:
*/
SELECT STR(123.45, 6, 1);
PRINT N'================================================================='
GO  



PRINT N'########FUNCAO CEILING'
/*
CEILING - Retorna o menor inteiro maior que ou igual a express�o num�rica especificada.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/ceiling-transact-sql

Exemplo:
*/
SELECT CEILING($123.45), CEILING($-123.45), CEILING($0.0);
PRINT N'================================================================='
GO  


PRINT N'########FUNCAO FLOOR'
/*
FLOOR - Retorna o maior inteiro menor ou igual � express�o num�rica especificada.
Documenta��o em: https://docs.microsoft.com/pt-br/sql/t-sql/functions/floor-transact-sql

Exemplo:
*/
SELECT FLOOR(123.45), FLOOR(-123.45), FLOOR($123.45);
PRINT N'================================================================='
GO

