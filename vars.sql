DECLARE @local varchar(10), @@global varchar(10)

SELECT @local = 'Variavel Local'
SELECT @@global = 'Variavel Global'

SELECT @local + ' <<=  Local: Global  =>> ' + @@global

