```
select convert(char(10),getdate(),103)

declare @cd_usuario char(10), @cd_tipo int 

declare @cd_usuario char(10) = 'Teste'
select @cd_usuario

DECLARE @number int,@copy int, @sum int

SELECT @number = 10
SELECT @copy = @number, @sum = @number + 100

DECLARE @AD_id char(11)

	SELECT @AD_id  = au_id
		FROM authors
		WHERE au_frame = 'Ann' and au_lname = 'Dull'

declare @pub_var int

select @pub_var = cd_aluno
from aluno
where nm_aluno = 'MARISA MELO OLIVEIRA'

SELECT @pub_var

SELECT email,cd_aluno
FROM aluno
WHERE cd_aluno = @pub_var
```


