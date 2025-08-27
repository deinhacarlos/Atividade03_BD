DELIMITER //

create procedure proc_inserir_dados_escola(
    in p_nome_curso varchar(100),
    in p_nome_turma varchar(100),
    in p_nome_aluno varchar(100),
    in p_idade_aluno int,
    in p_nota_aluno decimal(5,2),
    out p_id_curso int,
    out p_id_turma int,
    out p_id_aluno int
)
begin
    -- inserir curso
    insert into cursos(nome) values (p_nome_curso);

    -- buscar id do curso
    select id into p_id_curso
    from cursos
    where nome = p_nome_curso
    order by id desc;

    -- inserir turma
    insert into turmas(turma, id_curso) values (p_nome_turma, p_id_curso);

    -- buscar id da turma
    select id into p_id_turma
    from turmas
    where turma = p_nome_turma and id_curso = p_id_curso
    order by id desc;

    -- inserir aluno
    insert into alunos(nome, idade, id_turma) values (p_nome_aluno, p_idade_aluno, p_id_turma);

    -- buscar id do aluno
    select id_aluno into p_id_aluno
    from alunos
    where nome = p_nome_aluno and id_turma = p_id_turma
    order by id_aluno desc;

    -- inserir nota no boletim
    insert into boletim(id_curso, id_turma, id_aluno, nota)
    values (p_id_curso, p_id_turma, p_id_aluno, p_nota_aluno);
END //

DELIMITER ;
