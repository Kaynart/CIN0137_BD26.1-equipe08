-- ====================================================================================
-- ITEM DA CHECKLIST: ALTER TABLE / LIKE
-- Descrição: Cria uma  Constraint a partir do uso de ALTER TABLE e LIKE,
-- restringindo a formatacao do atributo CEP
-- ====================================================================================
ALTER TABLE endereco_funcionario
ADD CONSTRAINT check_cep CHECK (cep LIKE '_____-___');

-- ====================================================================================
-- ITEM DA CHECKLIST: ALTER TABLE
-- Descrição: Determina coluna data_nascimento_funcionario como NOT NULL
-- ====================================================================================
ALTER TABLE funcionario
MODIFY data_nascimento_funcionario NOT NULL;



-- ====================================================================================
-- ITEM DA CHECKLIST: CREATE INDEX
-- Descrição: Cria indices pra buscas com base no titulo da tabela filme
-- facilitando acessos pelo banco a essa coluna
-- ====================================================================================
CREATE INDEX index_filme_titulo
ON filme (titulo);

-- ====================================================================================
-- ITEM DA CHECKLIST: CREATE INDEX
-- Descrição: Cria indices pra buscas com base no nome do tabela funcionario
-- ====================================================================================
CREATE INDEX index_nome_funcionario
ON funcionario (nome_funcionario);



-- ====================================================================================
-- ITEM DA CHECKLIST: INSERT INTO
-- Descrição: Insere uma tupla de dados para a tabela Funcionario
-- funcionario Tomas Roland chegando ao banco
-- ====================================================================================
INSERT INTO funcionario (cpf, nome_funcionario, sexo, data_nascimento_funcionario, cpf_supervisor)
VALUES (
  '721.124.164-90',
  'Tomas Rolando',
  'M',
  TO_DATE('1996-06-01', 'YYYY-MM-DD'),
  NULL
);

-- ====================================================================================
-- ITEM DA CHECKLIST: INSERT INTO
-- Descrição: Insercao em Estudio omitindo propositalmente a coluna 'tem_chroma_key'.
-- O banco preenche automaticamente com o valor DEFAULT ('N') garantindo NOT NULL
-- ====================================================================================
INSERT INTO estudio (nome_estudio, metragem)
VALUES ('Colômbia Pinturas', 5800.00);



-- ====================================================================================
-- ITEM DA CHECKLIST: UPDATE / WHERE
-- Descrição: Atualiza a tupla recem-adicionada da tabela Funcionario referente ao
-- CPF '721.124.164-90' e coloca um supervisor associado a ele
-- ====================================================================================
UPDATE funcionario
SET cpf_supervisor = '434.444.544-13'
WHERE cpf = '721.124.164-90';

-- ====================================================================================
-- ITEM DA CHECKLIST: UPDATE / WHERE
-- Descrição: Atualiza como agora possuindo Chroma Key o Estudio recem-adicionado
-- ====================================================================================
UPDATE estudio
SET tem_chroma_key = 'S'
WHERE nome_estudio = 'Colômbia Pinturas';


-- ====================================================================================
-- ITEM DA CHECKLIST: DELETE / WHERE
-- Descrição: Deleta a tupla recem-adicionada da tabela Funcionario referente ao
-- CPF '721.124.164-90'
-- ====================================================================================
DELETE FROM funcionario
WHERE cpf = '721.124.164-90';

-- ====================================================================================
-- ITEM DA CHECKLIST: DELETE / WHERE
-- Descrição: Deleta a tupla de Estudio que foi adicionada agora
-- ====================================================================================
DELETE FROM estudio
WHERE nome_estudio = 'Colômbia Pinturas';



-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE
-- Descrição: Faz uma consulta com a sequencia SELECT FROM e WHERE para analisar
-- estudios grandes (metragem acima de 2350) e que possuem chroma key
-- ====================================================================================
SELECT nome_estudio, metragem
FROM estudio
WHERE (tem_chroma_key = 'S' AND metragem >= 2350.00);



-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / BETWEEN
-- Descrição: Faz uma consulta com a sequencia SELECT FROM e WHERE para analisar
-- funcionarios que nasceram entre 1990 e 2000, usando o BETWEEN
-- ====================================================================================
SELECT nome_funcionario, sexo, data_nascimento_funcionario
FROM funcionario
WHERE (data_nascimento_funcionario BETWEEN TO_DATE('1990-01-01', 'YYYY-MM-DD') AND TO_DATE('2000-12-31', 'YYYY-MM-DD'));



-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / IN
-- Descrição: Faz uma consulta com a sequencia SELECT FROM e WHERE para analisar
-- filmes indicados pra alguem que possui 14 anos, usando o IN
-- ====================================================================================
SELECT titulo, classificacao_indicativa
FROM filme
WHERE (classificacao_indicativa IN ('L', '12', '14'));


  
-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / IS NULL
-- Descrição: Faz uma consulta com a sequencia SELECT FROM e WHERE para analisar
-- filmes em que o cache_diretor foi omisso
-- ====================================================================================
SELECT titulo, ano_lancamento, cpf_diretor
FROM filme
WHERE (cache_diretor IS NULL);

-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / IS NOT NULL
-- Descrição: Faz uma consulta com a sequencia SELECT FROM e WHERE para analisar
-- funcionarios que possuem supervisor
-- ====================================================================================
SELECT cpf, nome_funcionario, cpf_supervisor
FROM funcionario
WHERE (cpf_supervisor IS NOT NULL);



-- ====================================================================================
-- ITEM DA CHECKLIST: INNER JOIN
-- Descrição: Faz uma consulta com a sequencia SELECT e FROM com JOIN de duas
-- tabelas pra associar a descricao de um figurino e o nome do ator destinado
-- ====================================================================================
SELECT fig.descricao, fun.nome_funcionario
FROM figurino fig
INNER JOIN funcionario fun ON fun.cpf = fig.CPF_ATOR_VESTIDO; 

-- ====================================================================================
-- ITEM DA CHECKLIST: MAX / MIN
-- Descrição: Faz uma consulta para devolver o funcionario mais jovem (MIN) e o mais
-- velho (MAX) da tabela funcionario
-- ====================================================================================
SELECT
    MAX(data_nascimento_funcionario) as data_mais_jovem,
    MIN(data_nascimento_funcionario) as data_mais_velho
FROM funcionario;



-- ====================================================================================
-- ITEM DA CHECKLIST: AVG
-- Descrição: Faz uma consulta para obter a media dos precos da tabela Equipamento
-- ====================================================================================
SELECT AVG(valor) as media_precos
FROM equipamento;

-- ====================================================================================
-- ITEM DA CHECKLIST: AVG
-- Descrição: Faz uma consulta para obter a media das metragens da tabela Estudio
-- ====================================================================================
SELECT AVG(metragem) as media_metragem
FROM estudio;



-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / COUNT / IS NOT NULL
-- Descrição: Faz uma consulta para obter a contagem de funcionarios supervisionados
-- ====================================================================================
SELECT COUNT(*) as quantidade_supervisionados
FROM funcionario
WHERE (cpf_supervisor IS NOT NULL);

-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / COUNT
-- Descrição: Faz uma consulta para obter a contagem de figurinos de tamanho P
-- ====================================================================================
SELECT COUNT(tamanho) as quantidade_p
FROM figurino
WHERE (tamanho = 'P');

-- ====================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / COUNT / IN
-- Descrição: Faz uma consulta para obter a contagem de filmes infantis (classificacao
-- L ou 12) lancados a partir de 2010
-- ====================================================================================
SELECT COUNT(*) as qtd_filmes_recentes_infantis
FROM filme
WHERE (classificacao_indicativa IN ('L', '12')) AND (ano_lancamento >= 2010);



-- ====================================================================================
-- ITEM DA CHECKLIST: INNER JOIN / LEFT JOIN
-- Descrição: Consulta unindo tres tabelas com INNER e LEFT JOIN, retornando nome em
-- funcionario, estilo em diretor e obra dirigida em filme
-- ====================================================================================
SELECT fun.nome_funcionario, dir.estilo_cinematografico, fil.titulo
FROM funcionario fun
JOIN diretor dir ON dir.cpf_funcionario = fun.cpf                       -- INNER pois quero apenas os funcionarios que sao diretores
LEFT JOIN filme fil ON fil.cpf_diretor = dir.cpf_funcionario;           -- LEFT pois diretores sem filmes (sem intersecao) tambem devem aparecer



-- ====================================================================================
-- ITEM DA CHECKLIST: SUBCONSULTA COM OPERADOR RELACIONAL
-- Descrição: Seleciona as atuacoes ator_filme em que o cache pago foi maior que o 
-- cache de Zendóia no filme Ande
-- ====================================================================================
SELECT fun.nome, af.personagem fil.titulo, af.cache
FROM funcionario fun
JOIN ator_filme af ON af.cpf_ator = fun.cpf
JOIN filme fil ON fil.id_filme = af.id_filme;


-- ========================================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / SUBCONSULTA COM OPERADOR RELACIONAL / INNER JOIN / ORDER BY
-- Descrição: Seleciona as atuacoes ator_filme em que o cache pago foi maior que o 
-- cache de Zendóia no filme Ande!
-- ========================================================================================================
SELECT 
    fun.nome_funcionario as ator,
    af.personagem,
    fil.titulo as titulo_filme,
    af.cache_ator as cache_recebido
FROM funcionario fun
JOIN ator_filme af ON af.cpf_ator = fun.cpf
JOIN filme fil ON fil.id_filme = af.id_filme
WHERE cache_ator >= (
    SELECT cache_ator
    FROM ator_filme
    WHERE id_filme = (SELECT id_filme FROM filme WHERE titulo = 'Ande!')
        AND cpf_ator = (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia')
)
ORDER BY cache_ator ASC;
