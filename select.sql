-- fazer o select para trazer os dados pedidos na atividade
select 
    c.nome as curso,
    t.turma as turma,
    a.nome as aluno,
    b.nota
from boletim b
join cursos c on b.id_curso = c.id
join turmas t on b.id_turma = t.id
join alunos a on b.id_aluno = a.id_aluno
where c.nome = 'técnico em desenvolvimento de sistemas'and t.turma = '3ds';
