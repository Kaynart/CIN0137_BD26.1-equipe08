-- uso de SEQUENCE: criacao de sequencias para as chaves ID's
CREATE SEQUENCE seq_equipamento START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_estudio START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_filme START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_figurino START WITH 1 INCREMENT BY 1;

-- ================= Entidade - Equipamento =================
CREATE TABLE equipamento (

        id_equipamento NUMBER DEFAULT seq_equipamento.NEXTVAL,						-- Chave Identificador unico de equipamento
        tipo     VARCHAR2(50) NOT NULL,									            -- Tipo do equipamento | ex: Camera, Microfone 
        valor    NUMBER(10, 2),										                -- Preço do equipamento com duas casas decimais
	

        CONSTRAINT pk_equipamento PRIMARY KEY (id_equipamento),						-- Uso de CONSTRAINT: regra que define id_equipamento como PK
  
        CONSTRAINT check_valor_equip CHECK (valor >= 0)							    -- Uso de CONSTRAINT: checa e garante que valor seja não negativo

);


-- ================= Entidade - Fornecedor =================
CREATE TABLE fornecedor (

        cnpj_fornecedor VARCHAR2(18),									            -- Chave CNPJ do Fornecedor com 18 espaços contando os pontos, barra e hifen de um CNPJ
        razao_social VARCHAR2(100) NOT NULL,						                -- Razao social associada ao fornecedor, varchar2 'ilimitado'

	    CONSTRAINT pk_fornecedor PRIMARY KEY (cnpj_fornecedor)						-- Uso de CONSTRAINT: regra que define cnpj_fornecedor como PK

);


-- ================= Entidade - Estudio =================
CREATE TABLE estudio (
	    num_id_estudio NUMBER DEFAULT seq_estudio.NEXTVAL,						    -- Chave Identificador unico de estudio
		nome_estudio VARCHAR2(100) NOT NULL,										-- Nome do estudio
	    metragem NUMBER(5, 2),										                -- Comprimento em metragem quadrada do estudio, com duas casas decimais
	    tem_chroma_key CHAR(1) DEFAULT 'N' NOT NULL,							    -- Flag indicando S ou N pra existencia de chroma key

	    CONSTRAINT pk_estudio PRIMARY KEY (num_id_estudio),						    -- Uso de CONSTRAINT: regra que define num_id_estudio como PK

	    CONSTRAINT check_valor_metragem CHECK (metragem > 0),						-- Uso de CONSTRAINT: checa e garante que metragem do estudio nao seja <= 0

        CONSTRAINT check_tem_chroma_key CHECK (tem_chroma_key IN ('S', 'N'))		-- Uso de CONSTRAINT: checa e garante que o atributo tem_chroma_key possua apenas 'S' ou 'N' como valor

);




-- ================= Entidade - Funcionario =================
CREATE TABLE funcionario (

        cpf VARCHAR2(14),										                                -- Chave CPF do Fornecedor com 14 espaços contando os pontos e hifen de um CPF
       	nome_funcionario VARCHAR2(100) NOT NULL,						                        -- Nome do funcionario
	    sexo CHAR(1),											                                -- Sexo do funcionario para 'M' ou 'F'
	    data_nascimento_funcionario DATE,								                        -- Data de nascimento
	    cpf_supervisor VARCHAR2(14),									                        -- Estrangeira referenciando funcionario supervisor

	CONSTRAINT pk_funcionario PRIMARY KEY (cpf),							                    -- Uso de CONSTRAINT: regra que define cpf como PK
	
	    CONSTRAINT check_sexo CHECK (sexo IN ('F', 'M')),						                -- Uso de CONSTRAINT: checa e garante que o atributo sexo possua apenas 'F' e 'M' como valor

	    CONSTRAINT fk_supervisor FOREIGN KEY (cpf_supervisor) REFERENCES funcionario(cpf)		-- Uso de CONSTRAINT: regra que define cpf_supervisor como FK referenciando funcionario(cpf)

);




-- ================= Atributo Composto - Endereco =================
CREATE TABLE endereco_funcionario (

	    cpf_funcionario_residente VARCHAR2(14),									                            -- Chave estrangeira/primaria cpf do funcionario residente
	    cep VARCHAR2(9),											                                        -- CEP referente a localizacao do endereco
	    numero NUMBER(3),											                                        -- Numero da residencia

	    CONSTRAINT pk_endereco PRIMARY KEY (cpf_funcionario_residente),				                        -- Uso de CONSTRAINT: regra que define cpf_funcionario como PK

	    CONSTRAINT fk_cpf_residente FOREIGN KEY (cpf_funcionario_residente) REFERENCES funcionario(cpf)		-- Uso de CONSTRAINT: regra que define cpf_funcionario como FK referenciando funcionario(cpf)

);


-- ================= Atributo Multivalorado - Telefone =================
CREATE TABLE telefone_funcionario (								
	    cpf_funcionario_contato VARCHAR2(14),									                        -- Estrangeira referenciando funcionario compondo a chave com o numero de telefone
	    numero_telefone VARCHAR2(11),										                            -- Chave composta numero de telefone do funcionario

	    CONSTRAINT pk_telefone_funcionario PRIMARY KEY (cpf_funcionario_contato, numero_telefone),		-- Uso de CONSTRAINT: regra que define cpf_funcionario_contato e numero_telefone como PK
	
	    CONSTRAINT fk_cpf_contato FOREIGN KEY (cpf_funcionario_contato) REFERENCES funcionario(cpf)		-- Uso de CONSTRAINT: regra que define cpf_funcionario_contato como FK referenciando funcionario(cpf)

);




-- ================= Entidade Fraca - Dependente =================
CREATE TABLE dependente (

	    cpf_funcionario_responsavel VARCHAR2(14),								                            -- Estrangeira referenciando funcionario compondo a chave com o nome
	    nome_dependente VARCHAR2(100),										                                -- Chave composta nome do dependente
	    data_nascimento_dependente DATE,                                                                    -- Data de nascimento
	    grau_parentesco VARCHAR2(20),										                                -- Grau de parentesco do dependente com o funcionario

	    CONSTRAINT pk_dependente PRIMARY KEY (nome_dependente, cpf_funcionario_responsavel),			    -- Uso de CONSTRAINT: regra que define cpf_funcionario_responsavel e nome_dependente como PK

	    CONSTRAINT fk_responsavel FOREIGN KEY (cpf_funcionario_responsavel) REFERENCES funcionario(cpf)		-- Uso de CONSTRAINT: regra que define cpf_funcionario_responsavel como FK referenciando funcionario(cpf)

);




-- ================= Entidade Especializada - Diretor =================
CREATE TABLE diretor (
	
	    cpf_funcionario VARCHAR2(14),										                                -- Estrangeira referenciando funcionario - chave
	    estilo_cinematografico VARCHAR2(100),									                            -- Estilo cinematografico do diretor
	
	    CONSTRAINT pk_diretor PRIMARY KEY (cpf_funcionario),							                    -- Uso de CONSTRAINT: regra que define cpf_funcionario como PK

	    CONSTRAINT fk_cpf_diretor FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf)			        -- Uso de CONSTRAINT: regra que define cpf_funcionario como FK referenciando funcionario(cpf)


);


-- ================= Entidade Especializada - Figurinista =================
CREATE TABLE figurinista (
	
	    cpf_funcionario VARCHAR2(14),										                                -- Estrangeira referenciando funcionario - chave
	    estilo_moda VARCHAR2(100),										                                    -- Estilo de moda do figurinista
	
	    CONSTRAINT pk_figurinista PRIMARY KEY (cpf_funcionario),						                    -- Uso de CONSTRAINT: regra que define cpf_funcionario como PK

	    CONSTRAINT fk_cpf_figurinista FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf)			    -- Uso de CONSTRAINT: regra que define cpf_funcionario como FK referenciando funcionario(cpf)

);


-- ================= Entidade Especializada - Ator =================
CREATE TABLE ator (

	    cpf_funcionario VARCHAR2(14),										                                -- Estrangeira referenciando funcionario - chave
	    numero_drt VARCHAR2(20) NOT NULL,								                                    -- Numero DRT do ator

	    CONSTRAINT pk_ator PRIMARY KEY (cpf_funcionario),							                        -- Uso de CONSTRAINT: regra que define cpf_funcionario como PK

	    CONSTRAINT fk_cpf_ator FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf)			        -- Uso de CONSTRAINT: regra que define cpf_funcionario como FK referenciando funcionario(cpf)



);
	



-- ================= Entidade - Filme =================
CREATE TABLE filme (

	    id_filme NUMBER DEFAULT seq_filme.NEXTVAL,								                                    -- Chave Identificador unico de filme
	    classificacao_indicativa VARCHAR2(2) NOT NULL, 									                            -- Classificacao indicativa do filme. Ex: L, 12, 16, 18...
	    ano_lancamento NUMBER(4),										                                            -- Ano em que o filme foi lancado
	    titulo VARCHAR2(100) NOT NULL,										                                        -- Titulo
	    cpf_diretor VARCHAR2(14) NOT NULL,									                                        -- Estrangeira referenciando Diretor que dirigiu o filme
		cache_diretor NUMBER(12,2),											                                        -- Cache recebido pelo diretor na direcao desse filme
	
	    CONSTRAINT pk_filme PRIMARY KEY (id_filme),								                                    -- Uso de CONSTRAINT: regra que define id_filme como PK

	    CONSTRAINT fk_diretor FOREIGN KEY (cpf_diretor) REFERENCES diretor(cpf_funcionario),			            -- Uso de CONSTRAINT: regra que define cpf_diretor como FK referenciando diretor(cpf_funcionario)

	    CONSTRAINT check_class_indic CHECK (classificacao_indicativa IN ('L', '10', '12', '14', '16', '18')),	    -- Uso de CONSTRAINT: checa e garante que classificacao indicativa e valida dentre as usadas no ambito cinematografico

	    CONSTRAINT check_ano_lancamento CHECK (ano_lancamento >= 1895),                                             -- Uso de CONSTRAINT: checa e garante que o ano de lancamento e valido (primeiro filme lancado em 1895)

		CONSTRAINT check_cache_diretor CHECK (cache_diretor > 0)													-- Uso de CONSTRAINT: checa e garante que o cache do diretor e valido (maior que 0)
);




-- ================= Entidade Associativa - Ator_Filme =================
CREATE TABLE ator_filme (

	    cpf_ator VARCHAR2(14),											                                            -- Estrangeira referenciando ator compondo a chave com o id_filme
	    id_filme NUMBER,											                                                -- Estrangeira referenciando filme compondo a chave com o cpf_ator
	    personagem VARCHAR2(100) NOT NULL,									                                        -- Personagem interpretado nessa atuacao
	    cache_ator NUMBER(12,2),											                                        -- Cache recebido pelo ator nesse filme

	    CONSTRAINT pk_ator_filme PRIMARY KEY (cpf_ator, id_filme),						                            -- Uso de CONSTRAINT: regra que define cpf_ator e id_filme funcionario como PK
	
	    CONSTRAINT fk_1_ator_filme FOREIGN KEY (cpf_ator) REFERENCES ator(cpf_funcionario),			                -- Uso de CONSTRAINT: regra que define cpf_ator como FK referenciando ator(cpf_funcionario)

	    CONSTRAINT fk_2_ator_filme FOREIGN KEY (id_filme) REFERENCES filme(id_filme),				                -- Uso de CONSTRAINT: regra que define id_filme como FK referenciando filme(id_filme)

	    CONSTRAINT check_cache_ator CHECK (cache_ator > 0)								                            -- Uso de CONSTRAINT: checa e garante que o cache e maior que 0

);




-- ================= Entidade - Figurino =================
CREATE TABLE figurino (

	    id_figurino NUMBER DEFAULT seq_figurino.NEXTVAL,							                                -- Chave Identificador unico de figurino
	    tamanho VARCHAR2(3) NOT NULL,										                                        -- Tamanho descrito no padrao. Ex: PP, P, G, XGG...
	    descricao VARCHAR2(100),										                                            -- Descricao/observacao do figurino
	    cpf_ator_vestido VARCHAR2(14),										                                        -- Estrangeira referenciando ator destinatario do figurino
	    id_filme_vestido NUMBER,										                                            -- Estrangeira referenciando filme que o figurino foi usado

	    CONSTRAINT pk_figurino PRIMARY KEY (id_figurino),							                                -- Uso de CONSTRAINT: regra que define id_figurino funcionario como PK
	
	    CONSTRAINT fk_1_figurino FOREIGN KEY (cpf_ator_vestido) REFERENCES ator(cpf_funcionario),		            -- Uso de CONSTRAINT: regra que define cpf_ator_vestido como FK referenciando ator(cpf_funcionario)

	    CONSTRAINT fk_2_figurino FOREIGN KEY (id_filme_vestido) REFERENCES filme(id_filme),			                -- Uso de CONSTRAINT: regra que define id_filme_vestido como FK referenciando filme(id_filme)

	    CONSTRAINT check_tamanho CHECK (tamanho IN ('PP', 'P', 'M', 'G', 'GG', 'XGG'))				                -- Uso de CONSTRAINT: checa e garante que o tamanho seja dentro do padrao de descricao

);





-- ================= Atributo Multivalorado - Genero =================
CREATE TABLE genero_filme (
	
	    id_filme NUMBER,											                                        -- Estrangeira referenciando filme
	    genero VARCHAR2(100),											                                    -- Genero do filme

	    CONSTRAINT pk_genero_filme PRIMARY KEY (id_filme, genero),						                    -- Uso de CONSTRAINT: regra que define id_filme e genero funcionario como PK

	    CONSTRAINT fk_genero_filme FOREIGN KEY (id_filme) REFERENCES filme(id_filme)				        -- Uso de CONSTRAINT: regra que define id_filme como FK referenciando filme(id_filme)

);




-- ================= Relacionamento - Confecciona =================
CREATE TABLE confecciona (
	
	    cpf_figurinista VARCHAR2(14),										                                -- Estrangeira referenciando figurinista compondo a chave com id_figurino
	    id_figurino NUMBER,											                                        -- Estrangeira referenciando figurino compondo a chave com cpf_figurinista
		cache_figurinista NUMBER(12,2),											                            -- Cache recebido pelo figurinista nessa confeccao de figurino
	
	    CONSTRAINT pk_confecciona PRIMARY KEY (cpf_figurinista, id_figurino),					            -- Uso de CONSTRAINT: regra que define id_filme e genero funcionario como PK

	    CONSTRAINT fk_figurinista FOREIGN KEY (cpf_figurinista) REFERENCES figurinista(cpf_funcionario),	-- Uso de CONSTRAINT: regra que define cpf_figurinista como FK referenciando figurinista(cpf_funcionario)

	    CONSTRAINT fk_figurino FOREIGN KEY (id_figurino) REFERENCES figurino(id_figurino),			        -- Uso de CONSTRAINT: regra que define id_figurino como FK referenciando figurino(id_figurino)

		CONSTRAINT check_cache_figurinista CHECK (cache_figurinista > 0)									-- Uso de CONSTRAINT: checa e garante que o cache do figurinista e valido (maior que 0)
);


-- ================= Relacionamento - Ocupa =================
CREATE TABLE ocupa (
	
	    id_filme NUMBER,                                                                                    -- Estrangeira referenciando filme
	    num_id_estudio NUMBER,											                                    -- Chave Identificador unico de estudio

	    CONSTRAINT pk_ocupa PRIMARY KEY (id_filme, num_id_estudio),						                    -- Uso de CONSTRAINT: regra que define id_filme e num_id_estudio funcionario como PK

	    CONSTRAINT fk_filme_ocupa FOREIGN KEY (id_filme) REFERENCES filme(id_filme),				        -- Uso de CONSTRAINT: regra que define id_filme como FK referenciando Filme(id_filme)

	    CONSTRAINT fk_estudio_ocupa FOREIGN KEY (num_id_estudio) REFERENCES estudio(num_id_estudio)		    -- Uso de CONSTRAINT: regra que define num_id_estudio como FK referenciando estudio(num_id_estudio)

);


-- ================= Relacionamento - Aloca =================
CREATE TABLE aloca (

	    id_filme NUMBER,											                                        -- Estrangeira referenciando filme
	    cnpj_fornecedor VARCHAR2(18),										                                -- Estrangeira referenciando fornecedor
	    id_equipamento NUMBER,											                                    -- Estrangeira referenciando equipamento
	    data_aporte DATE NOT NULL,										                                    -- Data de aporte do produto ao filme pelo fornecedor
	    data_devolucao DATE NOT NULL,										                                -- Data de devolucao do produto ao fornecedor pelo filme
	    estado_conservacao VARCHAR2(100),									                                -- Estado de conservacao do alocamento

	    CONSTRAINT pk_aloca PRIMARY KEY (id_filme, cnpj_fornecedor, id_equipamento),				            -- Uso de CONSTRAINT: regra que define id_filme, cnpj_fornecedor e id_equipamento como PK

	    CONSTRAINT fk_filme_aloca FOREIGN KEY (id_filme) REFERENCES filme(id_filme),				            -- Uso de CONSTRAINT: regra que define id_filme como FK referenciando filme(id_filme)

	    CONSTRAINT fk_fornecedor_aloca FOREIGN KEY (cnpj_fornecedor) REFERENCES fornecedor(cnpj_fornecedor),	-- Uso de CONSTRAINT: regra que define cnpj_fornecedor como FK referenciando fornecedor(cnpj_fornecedor)

	    CONSTRAINT fk_equipamento_aloca FOREIGN KEY (id_equipamento) REFERENCES equipamento(id_equipamento)	    -- Uso de CONSTRAINT: regra que define id_equipamento como FK referenciando equipamento(id_equipamento)
	
);

