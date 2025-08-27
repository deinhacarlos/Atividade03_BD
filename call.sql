-- set para declarar as variáveis do parâmetros
SET @id_curso = 0;
SET @id_turma = 0;
SET @id_aluno = 0;
-- Call para inserir os dados da escola
CALL proc_inserir_dados_escola('Técnico em Desenvolvimento de Sistemas', '3DS', 'João Silva', 18, 8.5, @id_curso, @id_turma, @id_aluno);
CALL proc_inserir_dados_escola('Técnico em Redes', 'Redes 1', 'Maria Santos', 19, 9.0, @id_curso, @id_turma, @id_aluno);
CALL proc_inserir_dados_escola('Técnico em Desenvolvimento de Sistemas', '3DS', 'Pedro Alves', 17, 7.5, @id_curso, @id_turma, @id_aluno);
CALL proc_inserir_dados_escola('Técnico em Informática', 'Info 2', 'Ana Paula', 18, 8.0, @id_curso, @id_turma, @id_aluno);
CALL proc_inserir_dados_escola('Técnico em Redes', 'Redes 1', 'Carlos Lima', 20, 7.8, @id_curso, @id_turma, @id_aluno);
CALL proc_inserir_dados_escola('Técnico em Desenvolvimento de Sistemas', '3DS', 'Fernanda Souza', 19, 9.2, @id_curso, @id_turma, @id_aluno);
