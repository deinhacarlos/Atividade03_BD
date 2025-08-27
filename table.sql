-- tabela cursos
create table cursos (
    id int primary key auto_increment,
    nome varchar(100) not null
);

-- tabela turmas
create table turmas (
    id int primary key auto_increment,
    turma varchar(100) not null,
    id_curso int not null,
    foreign key (id_curso) references cursos(id)
);

-- tabela alunos
create table alunos (
    id_aluno int primary key auto_increment,
    nome varchar(100) not null,
    idade int,
    id_turma int,
    foreign key (id_turma) references turmas(id)
);

-- tabela boletim
create table boletim (
    id int primary key auto_increment,
    id_curso int not null,
    id_turma int not null,
    id_aluno int not null,
    nota decimal(5,2) not null,
    foreign key (id_curso) references cursos(id),
    foreign key (id_turma) references turmas(id),
    foreign key (id_aluno) references alunos(id_aluno)
);
