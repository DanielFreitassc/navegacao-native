DECLARE @Iterantion INT = 0;
DECLARE @FirstName VARCHAR(30), @Middlename VARCHAR(30)

SELECT @FirstName = 'John'
SELECT @Middlename = 'Doe'

WHILE @Iterantion < 10
BEGIN 
	SELECT @Iterantion += 1;
	SELECT @FirstName AS Nome, @Middlename AS Sobrenome, @Iterantion AS CONTAGEM
END