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
SELECT fun.nome, af.personagem, fil.titulo, af.cache
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



-- ========================================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / SUBCONSULTA COM IN
-- Descrição: Seleciona os figurinos e o ator que o vestiu dos filmes que sao do genero Suspense
-- ========================================================================================================
SELECT
    fig.descricao as figurino,
    fun.nome_funcionario as ator,
    fil.titulo as filme
FROM figurino fig -- comeca com a tabel afigurino
JOIN funcionario fun ON fun.cpf = fig.cpf_ator_vestido -- intersecao com os atores vestidos por cada figurino
JOIN filme fil ON fil.id_filme = fig.id_filme_vestido -- intersecao com os filmes que receberam os figurinos
WHERE id_filme_vestido IN (
    SELECT id_filme
    FROM genero_filme
    WHERE genero = 'Suspense'
);



-- ========================================================================================================
-- ITEM DA CHECKLIST: SELECT - FROM - WHERE / SUBCONSULTA COM ANY / SUBCONSULTA COM IN 
-- Descrição: Seleciona os filmes, seus figurinos e os figurinistas com cache recebido pela confeccao menor
-- que qualquer cache pelos figurinos do filme O Celular Branco
-- ========================================================================================================
SELECT
    fil.titulo as filme,
    fig.descricao as figurino,
    fun.nome_funcionario as figurinista,
    con.cache_figurinista as cache_pago
FROM filme fil
JOIN figurino fig ON fig.id_filme_vestido = fil.id_filme -- intersecao da tabela figurino com os filmes destinados
JOIN confecciona con ON con.id_figurino = fig.id_figurino -- intersecao da tabela confecciona com id do figurino
JOIN funcionario fun ON fun.cpf = con.cpf_figurinista -- intersecao dos funcionarios figurinistas com confecciona
WHERE con.cache_figurinista < ANY (
    SELECT cache_figurinista
    FROM confecciona
    WHERE id_figurino IN (
        SELECT id_figurino
        FROM figurino
        WHERE id_filme_vestido = (
            SELECT id_filme
            FROM filme
            WHERE titulo = 'O Celular Branco'
        )
    )
);

-- ===========================================================================
-- PACOTE PKG_GESTAO_AGENDA (Prevenção de Conflitos)
-- ===========================================================================
CREATE OR REPLACE PACKAGE pkg_gestao_agenda IS
    -- função que verifica se um estúdio está livre em determinadas datas
    FUNCTION fn_estudio_livre(p_id_estudio IN NUMBER, p_data_inicio IN DATE, p_data_fim IN DATE) RETURN VARCHAR2;
END pkg_gestao_agenda;
/

CREATE OR REPLACE PACKAGE BODY pkg_gestao_agenda IS
    FUNCTION fn_estudio_livre(p_id_estudio IN NUMBER, p_data_inicio IN DATE, p_data_fim IN DATE) RETURN VARCHAR2 IS
        v_conflitos NUMBER := 0;
    BEGIN
        -- checa se existe sobreposição de datas na tabela 'ocupa'
        SELECT COUNT(*) INTO v_conflitos
        FROM ocupa
        WHERE num_id_estudio = p_id_estudio
          AND (p_data_inicio <= data_termino AND p_data_fim >= data_inicio);
          
        IF v_conflitos > 0 THEN
            RETURN 'N'; -- Ocupado
        ELSE
            RETURN 'S'; -- Livre
        END IF;
    END fn_estudio_livre;
END pkg_gestao_agenda;
/

-- ===========================================================================
-- PACOTE PKG_GESTAO_AGENDA (Prevenção de Conflitos)
-- ===========================================================================
CREATE OR REPLACE PACKAGE pkg_gestao_agenda IS
    -- função que verifica se um estúdio está livre em tais datas
    FUNCTION fn_estudio_livre(p_id_estudio IN NUMBER, p_data_inicio IN DATE, p_data_fim IN DATE) RETURN VARCHAR2;
END pkg_gestao_agenda;
/

CREATE OR REPLACE PACKAGE BODY pkg_gestao_agenda IS
    FUNCTION fn_estudio_livre(p_id_estudio IN NUMBER, p_data_inicio IN DATE, p_data_fim IN DATE) RETURN VARCHAR2 IS
        v_conflitos NUMBER := 0;
    BEGIN
        -- checa se existe sobreposição de datas na tabela 'ocupa'
        SELECT COUNT(*) INTO v_conflitos
        FROM ocupa
        WHERE num_id_estudio = p_id_estudio
          AND (p_data_inicio <= data_termino AND p_data_fim >= data_inicio);
          
        IF v_conflitos > 0 THEN
            RETURN 'N'; -- Ocupado
        ELSE
            RETURN 'S'; -- Livre
        END IF;
    END fn_estudio_livre;
END pkg_gestao_agenda;
/

-- ===========================================================================
-- PACOTE PKG_ALMOXARIFADO_SET (Logística)
-- ===========================================================================
CREATE OR REPLACE PACKAGE pkg_almoxarifado_set IS
    -- procedure pra registrar devolução e mudar status do equipamento
    PROCEDURE pr_devolucao_equipamento(p_id_equipamento IN NUMBER, p_estado_devolucao IN VARCHAR2);
END pkg_almoxarifado_set;
/

CREATE OR REPLACE PACKAGE BODY pkg_almoxarifado_set IS
    PROCEDURE pr_devolucao_equipamento(p_id_equipamento IN NUMBER, p_estado_devolucao IN VARCHAR2) IS
    BEGIN
        -- atualiza a tabela 'aloca' com o estado que o equipamento voltou
        UPDATE aloca
        SET estado_conservacao = p_estado_devolucao
        WHERE id_equipamento = p_id_equipamento;
    END pr_devolucao_equipamento;
END pkg_almoxarifado_set;
/

-- ===========================================================================
-- PACOTE PKG_ORCAMENTO_PRODUCAO (Controle Financeiro)
-- ===========================================================================
CREATE OR REPLACE PACKAGE pkg_orcamento_producao IS
    --função que soma os salários dos atores de um filme
    FUNCTION fn_custo_total_atores(p_id_filme IN NUMBER) RETURN NUMBER;
END pkg_orcamento_producao;
/


CREATE OR REPLACE PACKAGE BODY pkg_orcamento_producao IS
    FUNCTION fn_custo_total_atores(p_id_filme IN NUMBER) RETURN NUMBER IS
        v_total_cache NUMBER(12,2) := 0;
    BEGIN
        SELECT NVL(SUM(cache_ator), 0) INTO v_total_cache
        FROM ator_filme
        WHERE id_filme = p_id_filme;
        
        RETURN v_total_cache;
    END fn_custo_total_atores;
END pkg_orcamento_producao;
/

-- ===========================================================================
-- TRIGGER DE COMANDO (STATEMENT LEVEL): SEGURANÇA ELENCO
-- impede demissão em massa ou exclusão de elenco fora de expediente
-- ===========================================================================
CREATE OR REPLACE TRIGGER trg_seguranca_elenco
BEFORE DELETE ON ator_filme
BEGIN
    IF TO_CHAR(SYSDATE, 'HH24') NOT BETWEEN '08' AND '18' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Acesso Negado: Deleções no casting só permitidas em horário comercial.');
    END IF;
END;
/

-- ===========================================================================
-- TRIGGER DE LINHA (ROW LEVEL): AUDITA CACHÊ
-- regra sindical: o cachê nunca pode ser atualizado para um valor menor
-- ===========================================================================
CREATE OR REPLACE TRIGGER trg_audita_cache
BEFORE UPDATE OF cache_ator ON ator_filme
FOR EACH ROW
BEGIN
    IF :NEW.cache_ator < :OLD.cache_ator THEN
        RAISE_APPLICATION_ERROR(-20002, 'Violação Sindical: Proibido reduzir o cachê de um ator contratado.');
    END IF;
END;
/

-- BLOCO ANÔNIMO
DECLARE
    -- USO DE RECORD (Customizado para o Relatório)
    TYPE rec_relatorio_filme IS RECORD (
        id_filme    filme.id_filme%TYPE,
        titulo      filme.titulo%TYPE,
        ano         filme.ano_lancamento%TYPE
    );

    -- USO DE ESTRUTURA DE DADOS DO TIPO TABLE (Criação do Array/Coleção)
    TYPE tab_filmes_prod IS TABLE OF rec_relatorio_filme INDEX BY PLS_INTEGER;
    
    -- declarando a variável que vai guardar a lista de filmes na memória
    v_lista_filmes tab_filmes_prod;
    
    v_estudio_info estudio%ROWTYPE;
    v_contador  NUMBER := 1;
    v_classificacao VARCHAR2(50);
    
    -- CURSOR (OPEN, FETCH e CLOSE)
    CURSOR c_fornecedores IS SELECT razao_social, cnpj_fornecedor FROM fornecedor;
    v_nome_forn fornecedor.razao_social%TYPE;
    v_cnpj_forn fornecedor.cnpj_fornecedor%TYPE;

BEGIN
    DBMS_OUTPUT.PUT_LINE('==============================================');
    DBMS_OUTPUT.PUT_LINE('   RELATÓRIO EXECUTIVO - PRODUTORA DE FILMES  ');
    DBMS_OUTPUT.PUT_LINE('==============================================');

    -- SELECT … INTO
    SELECT * INTO v_estudio_info 
    FROM estudio 
    WHERE num_id_estudio = 1;
    
    DBMS_OUTPUT.PUT_LINE('>>> ANÁLISE DO ESTÚDIO PRINCIPAL: ' || v_estudio_info.nome_estudio);

    -- IF ELSIF
    IF v_estudio_info.tem_chroma_key = 'S' THEN
        DBMS_OUTPUT.PUT_LINE('    Status: Habilitado para Efeitos Especiais (CGI).');
    ELSIF v_estudio_info.metragem > 800 THEN
        DBMS_OUTPUT.PUT_LINE('    Status: Estúdio Amplo - Ideal para Construção de Sets.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('    Status: Estúdio Físico Padrão.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('>>> CLASSIFICAÇÃO DOS PRÓXIMOS PROJETOS');

    -- FOR IN LOOP 
    FOR r_filme IN (SELECT titulo, ano_lancamento, classificacao_indicativa FROM filme WHERE ROWNUM <= 5) LOOP
        
        -- CASE WHEN
        CASE r_filme.classificacao_indicativa
            WHEN 'L'  THEN v_classificacao := 'Público: Família';
            WHEN '18' THEN v_classificacao := 'Público: Adulto';
            ELSE           v_classificacao := 'Público: Restrito ' || r_filme.classificacao_indicativa || ' anos';
        END CASE;
        
        DBMS_OUTPUT.PUT_LINE('    Filme: ' || r_filme.titulo || ' | ' || v_classificacao);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('>>> AUDITORIA DE PARCEIROS (LOGÍSTICA)');

    -- manipulação do Cursor
    OPEN c_fornecedores;
    LOOP
        FETCH c_fornecedores INTO v_nome_forn, v_cnpj_forn;
        EXIT WHEN c_fornecedores%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('    Fornecedor Ativo: ' || v_nome_forn || ' (CNPJ: ' || v_cnpj_forn || ')');
    END LOOP;
    CLOSE c_fornecedores;

    DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('>>> LEITURA DE DADOS NA MEMÓRIA (LANÇAMENTOS)');

    -- aqui pega os filmes de 2025 no banco e joga TODOS de uma vez na estrutura TABLE (v_lista_filmes)
    SELECT id_filme, titulo, ano_lancamento 
    BULK COLLECT INTO v_lista_filmes 
    FROM filme 
    WHERE ano_lancamento >= 2025;

    -- WHILE LOOP
    v_contador := 1;
    WHILE v_contador <= v_lista_filmes.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('    Foco de Lançamento: ' || v_lista_filmes(v_contador).titulo || ' (' || v_lista_filmes(v_contador).ano || ')');
        v_contador := v_contador + 1;
    END LOOP;

    -- forçando um erro proposital de divisão por zero
    v_contador := 500 / 0;

EXCEPTION
    -- EXCEPTION WHEN
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('[!] SISTEMA: Simulação de cálculo de orçamento interrompida (Divisão por Zero).');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('[!] SISTEMA: Dados solicitados não encontrados no banco.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('[!] ERRO CRÍTICO: ' || SQLERRM);
END;
/
/
