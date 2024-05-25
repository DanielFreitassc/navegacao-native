declare @pub_var int

select @pub_var = cd_aluno
from aluno
where nm_aluno = 'MARISA MELO OLIVEIRA'

SELECT @pub_var

SELECT email,cd_aluno
FROM aluno
WHERE cd_aluno = @pub_var
