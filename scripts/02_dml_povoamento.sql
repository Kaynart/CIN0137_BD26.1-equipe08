-- INSERINDO NA TABELA FUNCIONARIO (Hierarquia Ajustada: Diretores no topo)
INSERT INTO FUNCIONARIO (cpf, nome_funcionario, data_nascimento_funcionario, sexo, cpf_supervisor) VALUES 
('293.404.544-63', 'Estevão Espilbergo', TO_DATE('1946-12-18', 'YYYY-MM-DD'), 'M', NULL),
('563.823.158-73', 'Quinto Tarantela', TO_DATE('1963-03-27', 'YYYY-MM-DD'), 'M', NULL),
('248.494.604-53', 'Gretchen Gerving', TO_DATE('1983-08-04', 'YYYY-MM-DD'), 'F', NULL),
('293.653.544-06', 'Martinho Escocês', TO_DATE('1942-11-17', 'YYYY-MM-DD'), 'M', NULL),
('653.404.344-63', 'Cristovão Nulo', TO_DATE('1970-07-30', 'YYYY-MM-DD'), 'M', NULL),
('293.534.566-73', 'Wesley Andarilho', TO_DATE('1969-05-01', 'YYYY-MM-DD'), 'M', '653.404.344-63'), -- Dir por Dir
('242.404.944-69', 'Dênis Vila-Nova', TO_DATE('1967-10-03', 'YYYY-MM-DD'), 'M', NULL),
('036.404.546-99', 'Sofia Cúpula', TO_DATE('1971-05-14', 'YYYY-MM-DD'), 'F', '889.012.345-67'), -- Dir por Dir (Francisco Ford Cúpula)
('434.444.544-13', 'Pedro Almodólar', TO_DATE('1949-09-25', 'YYYY-MM-DD'), 'M', '293.404.544-63'), -- Dir por Dir
('203.404.492-23', 'Jorge Lucas', TO_DATE('1944-05-14', 'YYYY-MM-DD'), 'M', NULL),
('667.890.123-45', 'Alfredo Bate-Copo', TO_DATE('1899-08-13', 'YYYY-MM-DD'), 'M', NULL),
('778.901.234-56', 'Estênio Cubrico', TO_DATE('1928-07-26', 'YYYY-MM-DD'), 'M', NULL),
('889.012.345-67', 'Francisco Ford Cúpula', TO_DATE('1939-04-07', 'YYYY-MM-DD'), 'M', NULL),
('990.123.456-78', 'Pedro João-Filho', TO_DATE('1961-10-31', 'YYYY-MM-DD'), 'M', '889.012.345-67'), -- Dir por Dir
('001.234.567-89', 'Tico Uai-Titi', TO_DATE('1975-08-16', 'YYYY-MM-DD'), 'M', '889.012.345-67'), -- Dir por Dir
    
('384.592.108-71', 'Leonardo DeCapra', TO_DATE('1974-11-11', 'YYYY-MM-DD'), 'M', NULL),
('712.943.550-24', 'Margarida Roberta', TO_DATE('1990-07-02', 'YYYY-MM-DD'), 'F', NULL),
('105.827.493-66', 'Breno Pinto', TO_DATE('1963-12-18', 'YYYY-MM-DD'), 'M', '293.653.544-06'), -- Ator por Dir (Martinho)
('840.192.375-92', 'Maria Estripe', TO_DATE('1949-06-22', 'YYYY-MM-DD'), 'F', '563.823.158-73'), -- Ator por Dir (Quinto)
('561.408.291-15', 'Tomás Cruzeiro', TO_DATE('1962-07-03', 'YYYY-MM-DD'), 'M', NULL),
('923.714.650-83', 'Zendóia', TO_DATE('1996-09-01', 'YYYY-MM-DD'), 'F', '242.404.944-69'), -- Ator por Dir (Dênis)
('478.251.904-37', 'Duane "A Pedra" João', TO_DATE('1972-05-02', 'YYYY-MM-DD'), 'M', NULL),
('259.630.817-48', 'Rian Ganso', TO_DATE('1980-11-12', 'YYYY-MM-DD'), 'M', NULL),
('634.805.729-50', 'Escarlete João-Hans', TO_DATE('1984-11-22', 'YYYY-MM-DD'), 'F', NULL),
('091.376.582-09', 'Samuel L. Jaquetão', TO_DATE('1948-12-21', 'YYYY-MM-DD'), 'M', NULL),
('112.345.678-90', 'Morgano Firmino', TO_DATE('1937-06-01', 'YYYY-MM-DD'), 'M', NULL), 
('223.456.789-01', 'Tomás Agradece', TO_DATE('1956-07-09', 'YYYY-MM-DD'), 'M', NULL), 
('334.567.890-12', 'Quiano Rios', TO_DATE('1964-09-02', 'YYYY-MM-DD'), 'M', '293.404.544-63'), -- Ator por Dir
('445.678.901-23', 'Angelina Bonita', TO_DATE('1975-06-04', 'YYYY-MM-DD'), 'F', NULL),
('556.789.012-34', 'Ema Pedra', TO_DATE('1968-09-25', 'YYYY-MM-DD'), 'F', '653.404.344-63'), -- Ator por Dir

('492.301.558-12', 'Edith Cabeça', TO_DATE('1997-10-28', 'YYYY-MM-DD'), 'F', NULL),
('823.109.445-67', 'Coleth Atmadeira', TO_DATE('1948-12-30', 'YYYY-MM-DD'), 'F', '492.301.558-12'), -- Fig por Fig
('156.778.234-09', 'Areia Powell', TO_DATE('1960-04-07', 'YYYY-MM-DD'), 'F', '492.301.558-12'), -- Fig por Fig
('121.667.490-57', 'Naum Alves de Sousa', TO_DATE('1999-10-05', 'YYYY-MM-DD'), 'M', '492.301.558-12'), -- Fig por Fig
('934.120.556-88', 'Milena Canhoneira', TO_DATE('1946-01-01', 'YYYY-MM-DD'), 'F', '492.301.558-12'), -- Fig por Fig
('642.001.993-85', 'Paco Rabane', TO_DATE('1934-02-18', 'YYYY-MM-DD'), 'M', NULL),
('227.843.102-45', 'Marilia Bode', TO_DATE('2004-02-12', 'YYYY-MM-DD'), 'F', NULL),
('159.332.887-12', 'João Mole', TO_DATE('1931-09-19', 'YYYY-MM-DD'), 'M', NULL),
('601.334.789-21', 'Rute Carroça', TO_DATE('1960-04-10', 'YYYY-MM-DD'), 'F', '159.332.887-12'), -- Fig por Fig
('221.445.009-88', 'Walter Planted', TO_DATE('1946-11-03', 'YYYY-MM-DD'), 'M', NULL),
('218.445.660-33', 'Jorge Armário', TO_DATE('1934-07-11', 'YYYY-MM-DD'), 'M', NULL),
('388.502.113-90', 'Kalma Vivinho', TO_DATE('1950-05-19', 'YYYY-MM-DD'), 'F', NULL),
('741.009.662-34', 'Ana Roda', TO_DATE('1931-10-30', 'YYYY-MM-DD'), 'F', NULL),
('054.112.776-49', 'Domenico Doce', TO_DATE('1958-08-13', 'YYYY-MM-DD'), 'M', '388.502.113-90'), -- Fig por Fig
('512.667.334-55', 'Jaqueline Durona', TO_DATE('1966-12-24', 'YYYY-MM-DD'), 'F', NULL),
('098.445.121-66', 'Érica Ishioca', TO_DATE('1938-07-12', 'YYYY-MM-DD'), 'F', NULL),
('714.283.001-44', 'Antônio Poço', TO_DATE('1935-06-02', 'YYYY-MM-DD'), 'M', '054.112.776-49'); -- Fig por Fig


-- INSERINDO ATORES NA TABELA ATOR 
INSERT INTO ATOR (cpf_funcionario, numero_drt) VALUES 
('384.592.108-71', 'DRT-1131'),
('712.943.550-24', 'DRT-2802'),
('105.827.493-66', 'DRT-9205'),
('840.192.375-92', 'DRT-4975'),
('561.408.291-15', 'DRT-8321'),
('923.714.650-83', 'DRT-3976'),
('478.251.904-37', 'DRT-1853'),
('259.630.817-48', 'DRT-6235'),
('634.805.729-50', 'DRT-7392'),
('091.376.582-09', 'DRT-5512'),
('112.345.678-90', 'DRT-5555'),
('223.456.789-01', 'DRT-6666'), 
('334.567.890-12', 'DRT-7777'), 
('445.678.901-23', 'DRT-8888'), 
('556.789.012-34', 'DRT-9999'); 

-- INSERINDOS DIRETORES NA TABELA DIRETOR
INSERT INTO DIRETOR (cpf_funcionario, estilo_cinematografico) VALUES
('293.404.544-63', 'Aventura Mágica'),
('563.823.158-73', 'Sangue e Diálogos Longos'),
('248.494.604-53', 'Comédia Dramática Independente'),
('293.653.544-06', 'Máfia e Redenção'),
('653.404.344-63', 'Ficção Científica Complexa'),
('293.534.566-73', 'Simetria Pastel'),
('242.404.944-69', 'Ficção Científica Épica'),
('036.404.546-99', 'Drama Melancólico'),
('434.444.544-13', 'Drama Passional Espanhol'),
('203.404.492-23', 'Space Opera Clássica'),
('667.890.123-45', 'Suspense Psicológico'), 
('778.901.234-56', 'Perfeccionismo Visual'),
('889.012.345-67', 'Épicos de Máfia e Guerra'),
('990.123.456-78', 'Aventura Fantástica Épica'), 
('001.234.567-89', 'Comédia Excêntrica'); 

-- INSERINDO NA TABELA FIGURINISTA
INSERT INTO FIGURINISTA (cpf_funcionario, estilo_moda) VALUES 
('492.301.558-12', 'Alta Costura e Cinema Clássico'),
('823.109.445-67', 'Figurinos de Época e Fantasia'),
('156.778.234-09', 'Épicos Históricos'),
('121.667.490-57', 'Teatro e Expressivismo'),
('934.120.556-88', 'Drama Italiano Contemporâneo'),
('227.843.102-45', 'Vanguarda e Novos Materiais'),
('601.334.789-21', 'Afrofuturismo e Épicos'),
('221.445.009-88', 'Corte e Costura Tradicional'),
('388.502.113-90', 'Minimalismo e Cores Vivas'),
('741.009.662-34', 'Musicais e Glamour'),
('512.667.334-55', 'Realismo Britânico'),
('098.445.121-66', 'Figurinos Conceituais Japoneses'),
('714.283.001-44', 'Aventura e Exploração'),
('159.332.887-12', 'Ficção Científica Militar'),
('642.001.993-85', 'Moda Futurista Espacial'),
('218.445.660-33', 'Ternos e Alfaiataria de Luxo'),
('054.112.776-49', 'Terror Gótico e Envelhecimento Textural');

-- Enderecos dos FUNCIONARIOS
INSERT INTO ENDERECO_FUNCIONARIO (cpf_funcionario_residente, cep, numero) VALUES
('293.404.544-63', '04538-132', 42),
('563.823.158-73', '04538-132', 158),
('248.494.604-53', '80240-031', 730),
('293.653.544-06', '01310-200', 12),
('653.404.344-63', '13083-852', 404),
('293.534.566-73', '95670-104', 88),
('242.404.944-69', '59090-050', 510),
('036.404.546-99', '01508-010', 203),
('434.444.544-13', '40020-000', 95),
('203.404.492-23', '12245-071', 17),
('384.592.108-71', '22460-050', 105),
('712.943.550-24', '04022-002', 120),
('105.827.493-66', '30140-071', 33),
('840.192.375-92', '01415-001', 206),
('561.408.291-15', '21032-150', 86),
('923.714.650-83', '81020-430', 420),
('478.251.904-37', '74115-040', 9),
('259.630.817-48', '88015-200', 36),
('634.805.729-50', '29050-335', 21),
('091.376.582-09', '05010-040', 194),
('492.301.558-12', '20040-002', 10),
('823.109.445-67', '01302-001', 133),
('156.778.234-09', '25610-081', 80),
('121.667.490-57', '31030-010', 450),
('934.120.556-88', '01407-200', 50),
('642.001.993-85', '82010-330', 300),
('227.843.102-45', '90010-150', 77),
('159.332.887-12', '70040-010', 66),
('601.334.789-21', '41810-012', 218),
('221.445.009-88', '50020-360', 101),
('218.445.660-33', '04543-900', 100),
('388.502.113-90', '30110-044', 15),
('741.009.662-34', '22041-001', 42),
('054.112.776-49', '01123-010', 99),
('512.667.334-55', '80530-000', 52),
('098.445.121-66', '21040-361', 99),
('714.283.001-44', '01512-000', 66);

-- INSERINDO OS TELEFONES
INSERT INTO TELEFONE_FUNCIONARIO (cpf_funcionario_contato, numero_telefone) VALUES
-- Diretores
('293.404.544-63', '11999991993'),
('293.404.544-63', '11969902638'),
('563.823.158-73', '21988880008'),
('248.494.604-53', '41977772023'),
('293.653.544-06', '11966661990'),
('293.653.544-06', '11910914888'),
('653.404.344-63', '19955550404'),
('293.534.566-73', '54944440101'),
('242.404.944-69', '84933332024'),
('036.404.546-99', '11922222003'),
('036.404.546-99', '11924131722'),
('434.444.544-13', '71911111999'),
('203.404.492-23', '12900001977'),
('203.404.492-23', '1232101977'),  
('667.890.123-45', '11922221111'),
('778.901.234-56', '41911112222'),
('889.012.345-67', '11900003333'),
('990.123.456-78', '51999994444'),
('001.234.567-89', '61988885555'),

-- Atores
('384.592.108-71', '21998762015'), 
('384.592.108-71', '21934562015'),  
('712.943.550-24', '11987650012'),
('712.943.550-24', '81924728980'),
('105.827.493-66', '31976541993'),
('840.192.375-92', '11965432006'),
('561.408.291-15', '21954321986'),
('923.714.650-83', '41943210420'),
('478.251.904-37', '62932100099'), 
('478.251.904-37', '62933330099'),  
('259.630.817-48', '81974611219'),
('259.630.817-48', '81990986688'),
('634.805.729-50', '27910982021'),
('091.376.582-09', '11909871994'),
('112.345.678-90', '71933332222'),
('223.456.789-01', '11988883333'),
('334.567.890-12', '11977774444'),
('445.678.901-23', '21966665555'),
('556.789.012-34', '31955556666'),

-- Figurinistas
('492.301.558-12', '21999110001'),
('823.109.445-67', '11988220013'),
('156.778.234-09', '24977331880'),
('121.667.490-57', '31966440045'),
('121.667.490-57', '31921094890'),
('121.667.490-57', '31972631010'),
('934.120.556-88', '11955550500'),
('642.001.993-85', '41944663000'),
('227.843.102-45', '51933770077'),
('159.332.887-12', '61922880066'),
('601.334.789-21', '71911992018'),
('221.445.009-88', '81900110010'),
('218.445.660-33', '11991220100'),
('388.502.113-90', '31982330001'),
('741.009.662-34', '21973440042'),
('054.112.776-49', '11964550099'),
('512.667.334-55', '41955661952'),
('098.445.121-66', '81972676829'),
('098.445.121-66', '81909381738'),
('714.283.001-44', '11937880666'),
('714.283.001-44', '31909876767');


-- INSERINDO FILMES NA TABELA FILME
INSERT INTO FILME (classificacao_indicativa, ano_lancamento, titulo, cpf_diretor, cache_diretor) VALUES 
('14', 2025, 'Uma Luta Antes da Outra', '293.404.544-63', 1350000.00),
('16', 2025, 'Pregadores', '563.823.158-73', 850000.00),
('12', 2024, 'Anatomia de uma Subida', '248.494.604-53', NULL),
('16', 2024, 'Ricas Criaturas', '293.653.544-06', 700000.00),
('12', 2025, 'O Agente Exposto', '653.404.344-63', 950000.00),
('12', 2023, 'Nada em Nenhum Lugar Nunca', '293.534.566-73', 300000.00),
('10', 2021, 'Guardiões do Globo', '242.404.944-69', 1100000.00),
('12', 2019, 'Entre Garfos e Revelações', '036.404.546-99', NULL),
('14', 2025, 'Valor Emocional', '434.444.544-13', 400000.00),
('14', 2025, 'Hamlet', '203.404.492-23', 1800000.00),
('10', 2018, 'O Pequeno Hotel Bucarest', '293.404.544-63', 500000.00),
('12', 2013, 'Arthur Sean Contra o Mundo', '563.823.158-73', 450000.00),
('L', 2007, 'O Anjo Veste Gucci', '248.494.604-53', 320000.00),
('16', 1999, 'Diabo e o Deus na água da Lua', '293.653.544-06', 600000.00),
('10', 2025, 'Projeto Ave Maria', '653.404.344-63', 1200000.00),
('10', 2009, 'Meninos Bonzinhos', '293.534.566-73', 200000.00),
('16', 2017, 'Ande!', '242.404.944-69', 550000.00),
('10', 2011, 'Mulheres de Branco', '036.404.546-99', 180000.00),
('L', 2000, 'História de Brinquedos', '434.444.544-13', 900000.00),
('18', 2022, 'O Celular Branco', '203.404.492-23', 750000.00);

INSERT INTO genero_filme (id_filme, genero) VALUES 

-- 1. Uma Luta Antes da Outra
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Ação'),
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Drama'),

-- 2. Pregadores
((SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Suspense'),
((SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Ação'),

-- 3. Anatomia de uma Subida
((SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Drama de Tribunal'),
((SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Suspense'),

-- 4. Ricas Criaturas
((SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Fantasia'),
((SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Comédia Ácido'),

-- 5. O Agente Exposto
((SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Ação'),
((SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Espionagem'),

-- 6. Nada em Nenhum Lugar Nunca
((SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Ficção Científica'),
((SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Aventura'),

-- 7. Guardiões do Globo
((SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Ação'),
((SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Super-herói'),

-- 8. Entre Garfos e Revelações
((SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Mistério'),
((SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Comédia'),

-- 9. Valor Emocional
((SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Ação'),
((SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Drama'),

-- 10. Hamlet
((SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Drama Épico'),
((SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Histórico'),

-- 11. O Pequeno Hotel Bucarest
((SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Comédia'),
((SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Aventura'),

-- 12. Arthur Sean Contra o Mundo
((SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Comédia'),
((SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Romance'),

-- 13. O Anjo Veste Gucci
((SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Comédia'),
((SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Drama'),

-- 14. Diabo e o Deus na água da Lua
((SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Fantasia Sombria'),
((SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Suspense'),

-- 15. Projeto Ave Maria
((SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Ficção Científica'),
((SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Drama de Sobrevivência'),

-- 16. Meninos Bonzinhos
((SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Policial'),
((SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Comédia'),

-- 17. Ande!
((SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'Terror Psicológico'),
((SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'Suspense'),

-- 18. Mulheres de Branco
((SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Drama'),
((SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Suspense'),

-- 19. História de Brinquedos
((SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Animação'),
((SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Aventura'),

-- 20. O Celular Branco
((SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Suspense'),
((SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Policial');


INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES 

-- 1. Uma Luta Antes da Outra
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Roberto', 600000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Militar', 450000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Marina', 300000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Ema Pedra'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Atleta', 600000.00),

-- 2. Pregadores
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Elias', 550000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Fiel Escudeiro', 400000.00),

-- 3. Anatomia de uma Subida
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Juíza', 350000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Felipe', 280000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Advogada de Defesa', 420000.00),

-- 4. Ricas Criaturas
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Helena', 850000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Herdeira Misteriosa', 500000.00),

-- 5. O Agente Exposto
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Ricardo', 900000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Informante da KGB', 700000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Quiano Rios'), (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Assassino', 900000.00),

-- 6. Nada em Nenhum Lugar Nunca
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Alice', 400000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Cientista-Chefe', 650000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Eduardo', 500000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Quiano Rios'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'O Escolhido', 950000.00),

-- 7. Guardiões do Globo
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Super-Herói Aposentado', 800000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Daniel', 450000.00),

-- 8. Entre Garfos e Revelações
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Rodrigo', 300000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Carmem', 700000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Mordomo Suspeito', 350000.00),

-- 9. Valor Emocional
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Thiago', 500000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Psicóloga', 450000.00),

-- 10. Hamlet
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Príncipe Dinamarquês', 750000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Sofia', 600000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Rei Usurpador', 650000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Morgano Firmino'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Narrador', 750000.00),

-- 11. O Pequeno Hotel Bucarest
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Concierge', 500000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Isabela', 320000.00),

-- 12. Arthur Sean Contra o Mundo
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Lucas', 550000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Guitarrista Rival', 400000.00),

-- 13. O Anjo Veste Gucci
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Editora-Chefe', 950000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Luiza', 550000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Estagiária', 480000.00),

-- 14. Diabo e o Deus na água da Lua
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Capitão do Barco', 400000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Marcelo', 380000.00),

-- 15. Projeto Ave Maria
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Astronauta Sobrevivente', 600000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Fernando', 650000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Agradece'), (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Capitão', 800000.00),

-- 16. Meninos Bonzinhos
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Detetive Particular', 500000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Paulo', 480000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Henrique', 420000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Agradece'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Professor', 450000.00),

-- 17. Ande!
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'João', 500000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'Hipnotizadora', 350000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Angelina Bonita'), (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'Agente Especial', 850000.00),

-- 18. Mulheres de Branco
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Médica Cirurgiã', 600000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Lúcia', 800000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Enfermeira-Chefe', 450000.00),

-- 19. História de Brinquedos
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Tiago', 700000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Patrulheiro Espacial', 500000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Morgano Firmino'), (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Delegado', 500000.00),

-- 20. O Celular Branco
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Assassino', 400000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Otávio', 550000.00),
((SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Investigador', 350000.00);

-- INSERINDO ESTUDIOS
INSERT INTO ESTUDIO (nome_estudio, metragem, tem_chroma_key) VALUES
('Warner Primos', 2500.50, 'S'),
('Multiversal Pictures', 3000.00, 'S'),
('Paredemount', 1800.75, 'N'),
('21st Century Wolf', 2200.00, 'S'),
('Puxar Animation', 1500.00, 'S'),
('Diznei Studios', 4000.00, 'S'),
('Sonyca Pictures', 2100.25, 'N'),
('Leãozinho Gate', 1700.00, 'S');


-- INSERINDO FORNECEDORES
INSERT INTO fornecedor (cnpj_fornecedor, razao_social) VALUES
('33.592.510/0001-54', 'Visão Filmes Equipamentos Ltda'),
('18.765.432/0001-99', 'Som e Arte Captação S/A'),
('45.123.890/0001-21', 'Luz Brilhante Iluminação EIRELI'),
('08.345.112/0001-76', 'Câmera Pró Locações'),
('67.890.234/0001-88', 'FX Efeitos Especiais Ltda'),
('12.456.789/0001-33', 'Impacto Pirotecnia S/A'),
('54.321.098/0001-65', 'Pós-Produção Digital S/A'),
('89.012.345/0001-11', 'Clima Cenográfico Ltda'),
('21.987.654/0001-44', 'Estilo e Época Figurinos'),
('76.543.210/0001-87', 'Visage Maquiagem Profissional'),
('11.223.344/0001-55', 'Alfaiataria do Set EIRELI'),
('99.887.766/0001-22', 'TransLog Transporte de Equipamentos'),
('44.556.677/0001-33', 'Clássicos Locação de Veículos'),
('55.667.788/0001-44', 'AeroCena Filmagens Aéreas'),
('22.334.455/0001-66', 'Sabor de Set Refeições'),
('88.990.011/0001-77', 'Catering Estrela S/A'),
('33.445.566/0001-88', 'Café das Artes Ltda'),
('77.889.900/0001-99', 'Lanches Express Produções'),
('66.778.899/0001-00', 'Escudo Segurança Privada'),
('19.283.746/0001-15', 'Ação e Risco Dublês S/A');

--INSERINDO NA TABELA EQUIPAMENTOS
INSERT INTO EQUIPAMENTO (tipo, valor) VALUES 
('Câmera IMAX PRO 70mm', 250000.00),
('Kit Lentes SonyVision', 85000.50),
('Guindaste Pequeno', 120000.00),
('Stream Deck', 15000.00),
('Kit Iluminação Arri Skypanel', 45000.00),
('Drone Cinematográfico Avançado', 25000.00),
('Estabilizador Steadicam Pro', 35000.00),
('Microfone Fifine AM8', 5000.00),
('Câmera GoPRO 4.0', 1200.00),
('Monitor de Diretor 16k', 8500.00),
('Câmera Canon EOS R10', 180000.00),
('Lente Profissional', 65000.00),
('Refletor 18K', 22000.00),
('Gerador Silencioso 100kVA', 30000.00),
('Kit Microfones Lapela ', 8000.00),
('Trilho movedor de Câmeras', 45000.00),
('Máquina de Fumaça', 3500.00),
('Chroma Key Portatil (Verde)', 1500.00),
('Lampadas Flexiveis', 2500.00),
('Cadeira Ergonomica', 500.00);

-- INSERINDO NA TABELA DEPENDENTES
INSERT INTO DEPENDENTE (cpf_funcionario_responsavel, nome_dependente, data_nascimento_dependente, grau_parentesco) VALUES 
('293.404.544-63', 'QuendolosPadresZiguiriguidun Souza', TO_DATE('2010-05-12', 'YYYY-MM-DD'), 'Irmão'),
('293.404.544-63', 'Neuvillette Carvalho', TO_DATE('2013-08-20', 'YYYY-MM-DD'), 'Filho'),
('105.827.493-66', 'Simon Pinto', TO_DATE('2011-04-25', 'YYYY-MM-DD'), 'Irmão'),
('840.192.375-92', 'Dexter Morgan', TO_DATE('2015-11-03', 'YYYY-MM-DD'), 'Filho'),
('561.408.291-15', 'Jurandira Salvino', TO_DATE('2008-02-28', 'YYYY-MM-DD'), 'Tia'),
('036.404.546-99', 'Alice Maravilha', TO_DATE('2018-07-14', 'YYYY-MM-DD'), 'Filha'),
('384.592.108-71', 'Emerick Silva', TO_DATE('2020-01-10', 'YYYY-MM-DD'), 'Sobrinho'),
('478.251.904-37', 'Joãozinho Noroxius', TO_DATE('2016-09-07', 'YYYY-MM-DD'), 'Filho');


INSERT INTO figurino (tamanho, descricao, cpf_ator_vestido, id_filme_vestido) VALUES 

-- 1. Uma Luta Antes da Outra
('G', 'Kimono de judô de "Roberto" com faixa preta', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra')),
('M', 'Farda militar de "Militar" com manchas de terra', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra')),
('PP', 'Roupa tática de infiltração de "Marina"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra')),
('M', 'Agasalho esportivo de alta performance de "Atleta"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Ema Pedra'), (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra')),

-- 2. Pregadores
('GG', 'Terno risca de giz de "Elias" com suspensórios', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'Pregadores')),
('M', 'Jaqueta de couro de "Fiel Escudeiro"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Pregadores')),

-- 3. Anatomia de uma Subida
('P', 'Toga clássica de "Juíza" em veludo', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida')),
('M', 'Terno casual de "Felipe"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida')),
('P', 'Terno de alfaiataria de "Advogada de Defesa"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida')),

-- 4. Ricas Criaturas
('M', 'Vestido de gala vermelho de "Helena"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas')),
('P', 'Casaco de pele sintética de "Herdeira Misteriosa"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas')),

-- 5. O Agente Exposto
('M', 'Terno slim de "Ricardo" resistente a balas', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto')),
('XGG', 'Sobretudo de "Informante da KGB" com gola de pele', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto')),
('G', 'Traje tático com capuz de "Assassino"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Quiano Rios'), (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto')),

-- 6. Nada em Nenhum Lugar Nunca
('PP', 'Macacão multiversal de "Alice" com LEDs', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca')),
('M', 'Jaleco de laboratório de "Cientista-Chefe"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca')),
('M', 'Camisa polo e calça social de "Eduardo"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca')),
('G', 'Sobretudo preto longo e óculos escuros de "O Escolhido"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Quiano Rios'), (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca')),

-- 7. Guardiões do Globo
('XGG', 'Traje de elastano de "Super-Herói Aposentado"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo')),
('M', 'Calça jeans e camisa xadrez rasgada de "Daniel"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo')),

-- 8. Entre Garfos e Revelações
('M', 'Suéter de lã tricotado de "Rodrigo"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações')),
('M', 'Vestido preto elegante de "Carmem"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações')),
('GG', 'Uniforme de "Mordomo Suspeito"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações')),

-- 9. Valor Emocional
('M', 'Jaqueta jeans com emblema nas costas de "Thiago"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional')),
('P', 'Conjunto social de linho claro de "Psicóloga"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional')),

-- 10. Hamlet
('M', 'Traje real de "Príncipe Dinamarquês" com coroa', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet')),
('P', 'Vestido medieval de seda de "Sofia"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet')),
('M', 'Capa de veludo de "Rei Usurpador" com espada', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet')),
('G', 'Smoking clássico de "Narrador" e gravata borboleta', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Morgano Firmino'), (SELECT id_filme FROM filme WHERE titulo = 'Hamlet')),

-- 11. O Pequeno Hotel Bucarest
('M', 'Uniforme de "Concierge" roxo com botões dourados', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest')),
('P', 'Vestido de confeiteira de "Isabela"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest')),

-- 12. Arthur Sean Contra o Mundo
('M', 'Camiseta de banda e munhequeiras de "Lucas"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo')),
('M', 'Calça de couro e colete com tachas de "Guitarrista"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo')),

-- 13. O Anjo Veste Gucci
('M', 'Casaco de grife e óculos escuros de "Editora-Chefe"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci')),
('P', 'Conjunto de alta costura vanguardista de "Luiza"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci')),
('P', 'Roupas fora de moda de "Estagiária"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci')),

-- 14. Diabo e o Deus na água da Lua
('GG', 'Capa de chuva amarela de "Capitão do Barco"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua')),
('M', 'Roupas rasgadas e molhadas de "Marcelo"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua')),

-- 15. Projeto Ave Maria
('M', 'Traje espacial EVA danificado de "Astronauta"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria')),
('G', 'Macacão de engenharia de "Fernando"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria')),
('G', 'Uniforme de comandante de "Capitão"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Agradece'), (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria')),

-- 16. Meninos Bonzinhos
('M', 'Terno mal ajustado de "Detetive Particular"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos')),
('M', 'Camisa havaiana extravagante de "Paulo"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos')),
('M', 'Colete à prova de balas de "Henrique"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Breno Pinto'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos')),
('G', 'Paletó de tweed com cotoveleiras de "Professor"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Agradece'), (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos')),

-- 17. Ande!
('XGG', 'Roupas casuais de viagem de "João"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Duane "A Pedra" João'), (SELECT id_filme FROM filme WHERE titulo = 'Ande!')),
('P', 'Vestido de chá floral elegante de "Hipnotizadora"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Zendóia'), (SELECT id_filme FROM filme WHERE titulo = 'Ande!')),
('M', 'Traje formal escuro de "Agente Especial"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Angelina Bonita'), (SELECT id_filme FROM filme WHERE titulo = 'Ande!')),

-- 18. Mulheres de Branco
('P', 'Jaleco branco e estetoscópio de "Médica Cirurgiã"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Escarlete João-Hans'), (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco')),
('M', 'Uniforme de plantão branco de "Lúcia"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Maria Estripe'), (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco')),
('P', 'Traje clínico de "Enfermeira-Chefe"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Margarida Roberta'), (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco')),

-- 19. História de Brinquedos
('M', 'Colete de vaqueiro de "Tiago" e chapéu de xerife', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Tomás Cruzeiro'), (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos')),
('GG', 'Armadura espacial de plástico de "Patrulheiro"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos')),
('G', 'Uniforme policial azul com distintivo de "Delegado"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Morgano Firmino'), (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos')),

-- 20. O Celular Branco
('GG', 'Capa de chuva de vinil de "Assassino" e luvas', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Samuel L. Jaquetão'), (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco')),
('M', 'Terno cinza despojado de "Otávio"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Leonardo DeCapra'), (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco')),
('M', 'Sobretudo bege clássico de "Investigador"', (SELECT cpf FROM funcionario WHERE nome_funcionario = 'Rian Ganso'), (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'));



-- INSERINDO AS RELAÇÕES DE QUEM CONFECCIONOU QUAL FIGURINO (TABELA CONFECCIONA)

INSERT INTO confecciona (cpf_figurinista, id_figurino, cache_figurinista) VALUES 

-- 1. Vestido de gala vermelho (Ricas Criaturas) -> Feito por Edith e Coleth
('492.301.558-12', (SELECT id_figurino FROM figurino WHERE descricao = 'Vestido de gala vermelho de "Helena"'), 45000.00),
('823.109.445-67', (SELECT id_figurino FROM figurino WHERE descricao = 'Vestido de gala vermelho de "Helena"'), 35000.00),

-- 2. Traje espacial EVA danificado (Projeto Ave Maria) -> Feito por João e Marilia
('159.332.887-12', (SELECT id_figurino FROM figurino WHERE descricao = 'Traje espacial EVA danificado de "Astronauta"'), 60000.00),
('227.843.102-45', (SELECT id_figurino FROM figurino WHERE descricao = 'Traje espacial EVA danificado de "Astronauta"'), 55000.00),

-- 3. Terno risca de giz (Pregadores) -> Feito por Jorge
('218.445.660-33', (SELECT id_figurino FROM figurino WHERE descricao = 'Terno risca de giz de "Elias" com suspensórios'), 28000.00),

-- 4. Macacão multiversal com LEDs (Nada em Nenhum Lugar Nunca) -> Feito por Paco
('642.001.993-85', (SELECT id_figurino FROM figurino WHERE descricao = 'Macacão multiversal de "Alice" com LEDs'), 85000.00),

-- 5. Armadura espacial branca e verde (História de Brinquedos) -> Feito por Paco
('642.001.993-85', (SELECT id_figurino FROM figurino WHERE descricao = 'Armadura espacial de plástico de "Patrulheiro"'), 75000.00),

-- 6. Toga preta clássica (Anatomia de uma Subida) -> Feito por Naum
('121.667.490-57', (SELECT id_figurino FROM figurino WHERE descricao = 'Toga clássica de "Juíza" em veludo'), 15000.00),

-- 7. Kimono de judô desgastado (Uma Luta Antes da Outra) -> Feito por Walter
('221.445.009-88', (SELECT id_figurino FROM figurino WHERE descricao = 'Kimono de judô de "Roberto" com faixa preta'), 12000.00),

-- 8. Terno feminino de alfaiataria (Anatomia de uma Subida) -> Feito por Jorge
('218.445.660-33', (SELECT id_figurino FROM figurino WHERE descricao = 'Terno de alfaiataria de "Advogada de Defesa"'), 32000.00),

-- 9. Traje real de época dinamarquês com coroa (Hamlet) -> Feito por dois figurinistas
('156.778.234-09', (SELECT id_figurino FROM figurino WHERE descricao = 'Traje real de "Príncipe Dinamarquês" com coroa'), 50000.00),
('823.109.445-67', (SELECT id_figurino FROM figurino WHERE descricao = 'Traje real de "Príncipe Dinamarquês" com coroa'), 48000.00),

-- 10. Farda militar camuflada (Uma Luta Antes da Outra) -> Feito por Especialista em Ficção Militar
('159.332.887-12', (SELECT id_figurino FROM figurino WHERE descricao = 'Farda militar de "Militar" com manchas de terra'), 25000.00),

-- 11. Casaco de pele sintética branco extravagante (Ricas Criaturas) -> Feito por Especialista em Musicais
('741.009.662-34', (SELECT id_figurino FROM figurino WHERE descricao = 'Casaco de pele sintética de "Herdeira Misteriosa"'), 38000.00),

-- 12. Traje de elastano azul marinho super reforçado (Guardiões do Globo) -> Feito por Especialista em Vanguarda
('227.843.102-45', (SELECT id_figurino FROM figurino WHERE descricao = 'Traje de elastano de "Super-Herói Aposentado"'), 65000.00),

-- 13. Sobretudo clássico de detetive bege (O Celular Branco) -> Feito por Especialista em Realismo Britânico
('512.667.334-55', (SELECT id_figurino FROM figurino WHERE descricao = 'Sobretudo bege clássico de "Investigador"'), 22000.00),

-- 14. Capa de chuva preta de vinil (O Celular Branco) -> Feito por Especialista em Terror Gótico
('054.112.776-49', (SELECT id_figurino FROM figurino WHERE descricao = 'Capa de chuva de vinil de "Assassino" e luvas'), 20000.00),

-- 15. Terno slim fit a prova de balas (O Agente Exposto) -> Feito por Especialista em Alfaiataria
('218.445.660-33', (SELECT id_figurino FROM figurino WHERE descricao = 'Terno slim de "Ricardo" resistente a balas'), 42000.00);

--RELACIONAMENTO ALOCA

-- Filme 1 Uma Luta Antes da Outra
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), '33.592.510/0001-54', 1, TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-03-15', 'YYYY-MM-DD'), 'Excelente');
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), '18.765.432/0001-99', 10, TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'Ótimo');
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), '45.123.890/0001-21', 5, TO_DATE('2025-01-12', 'YYYY-MM-DD'), TO_DATE('2025-03-18', 'YYYY-MM-DD'), 'Ruim');

-- Filme 2 Pregadores
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), '18.765.432/0001-99', 8, TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'Bom');

-- Filme 3 Anatomia de uma Subida
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), '45.123.890/0001-21', 5, TO_DATE('2024-05-20', 'YYYY-MM-DD'), TO_DATE('2024-08-15', 'YYYY-MM-DD'), 'Ótimo');
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), '33.592.510/0001-54', 16, TO_DATE('2024-05-25', 'YYYY-MM-DD'), TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'Péssimo');

-- Filme 4 Ricas Criaturas
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), '08.345.112/0001-76', 2, TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'Péssimo');

-- Filme 5 O Agente Exposto
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), '67.890.234/0001-88', 11, TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'Perfeito');
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), '08.345.112/0001-76', 7, TO_DATE('2025-01-20', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'Regular');

-- Filme 6 Nada em Nenhum Lugar Nunca
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), '12.456.789/0001-33', 17, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), 'Péssimo');

-- Filme 7 Guardiões do Globo
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), '54.321.098/0001-65', 7, TO_DATE('2021-08-15', 'YYYY-MM-DD'), TO_DATE('2021-12-20', 'YYYY-MM-DD'), 'Ótimo');

-- Filme 8 Entre Garfos e Revelações
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), '89.012.345/0001-11', 19, TO_DATE('2019-10-01', 'YYYY-MM-DD'), TO_DATE('2019-12-15', 'YYYY-MM-DD'), 'Ruim');

-- Filme 9 Valor Emocional
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), '21.987.654/0001-44', 18, TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'Excelente');

-- Filme 10 Hamlet
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), '76.543.210/0001-87', 10, TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'Ótimo');

-- Filme 11 O Pequeno Hotel Bucarest
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), '11.223.344/0001-55', 9, TO_DATE('2018-04-12', 'YYYY-MM-DD'), TO_DATE('2018-07-20', 'YYYY-MM-DD'), 'Bom');

-- Filme 12 Arthur Sean Contra o Mundo
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), '99.887.766/0001-22', 16, TO_DATE('2013-05-15', 'YYYY-MM-DD'), TO_DATE('2013-09-30', 'YYYY-MM-DD'), 'Regular');

-- Filme 13 O Anjo Veste Gucci
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), '44.556.677/0001-33', 3, TO_DATE('2007-08-20', 'YYYY-MM-DD'), TO_DATE('2007-12-10', 'YYYY-MM-DD'), 'Ótimo');

-- Filme 14 Diabo e o Deus na água da Lua
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), '55.667.788/0001-44', 6, TO_DATE('1999-01-10', 'YYYY-MM-DD'), TO_DATE('1999-05-15', 'YYYY-MM-DD'), 'Regular');

-- Filme 15 Projeto Ave Maria
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), '22.334.455/0001-66', 13, TO_DATE('2025-04-05', 'YYYY-MM-DD'), TO_DATE('2025-08-12', 'YYYY-MM-DD'), 'Excelente');
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), '12.456.789/0001-33', 17, TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 'Ruim');

-- Filme 16 Meninos Bonzinhos
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), '88.990.011/0001-77', 15, TO_DATE('2009-10-12', 'YYYY-MM-DD'), TO_DATE('2010-01-20', 'YYYY-MM-DD'), 'Bom');

-- Filme 17 Ande!
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Ande!'), '33.445.566/0001-88', 4, TO_DATE('2017-02-15', 'YYYY-MM-DD'), TO_DATE('2017-06-01', 'YYYY-MM-DD'), 'Péssimo');

-- Filme 18 Mulheres de Branco
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), '77.889.900/0001-99', 12, TO_DATE('2011-11-20', 'YYYY-MM-DD'), TO_DATE('2012-03-15', 'YYYY-MM-DD'), 'Ruim');

-- Filme 19 História de Brinquedos
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), '66.778.899/0001-00', 20, TO_DATE('2000-06-10', 'YYYY-MM-DD'), TO_DATE('2000-09-05', 'YYYY-MM-DD'), 'Excelente');

-- Filme 20 O Celular Branco
INSERT INTO aloca (id_filme, cnpj_fornecedor, id_equipamento, data_aporte, data_devolucao, estado_conservacao) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), '19.283.746/0001-15', 14, TO_DATE('2022-09-01', 'YYYY-MM-DD'), TO_DATE('2022-12-10', 'YYYY-MM-DD'), 'Ótimo');

-- RELACIONAMENTO OCUPA (Atualizado com Datas)

-- 1 Uma Luta Antes da Outra
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Warner Primos'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-03-25', 'YYYY-MM-DD'));
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Diznei Studios'), TO_DATE('2025-01-05', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'));

-- 2 Pregadores
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Multiversal Pictures'), TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'));

-- 3 Anatomia de uma Subida
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Paredemount'), TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-08-30', 'YYYY-MM-DD'));

-- 4 Ricas Criaturas
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = '21st Century Wolf'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'));

-- 5 O Agente Exposto
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Puxar Animation'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-05-30', 'YYYY-MM-DD'));
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Multiversal Pictures'), TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));

-- 6 Nada em Nenhum Lugar Nunca
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Diznei Studios'), TO_DATE('2023-05-20', 'YYYY-MM-DD'), TO_DATE('2023-09-20', 'YYYY-MM-DD'));

-- 7 Guardiões do Globo
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Sonyca Pictures'), TO_DATE('2021-08-01', 'YYYY-MM-DD'), TO_DATE('2021-12-30', 'YYYY-MM-DD'));

-- 8 Entre Garfos e Revelações
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Leãozinho Gate'), TO_DATE('2019-09-15', 'YYYY-MM-DD'), TO_DATE('2019-12-25', 'YYYY-MM-DD'));

-- 9 Valor Emocional
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Warner Primos'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'));
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Puxar Animation'), TO_DATE('2025-02-05', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'));

-- 10 Hamlet
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Multiversal Pictures'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-06-30', 'YYYY-MM-DD'));

-- 11 O Pequeno Hotel Bucarest
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Diznei Studios'), TO_DATE('2018-04-01', 'YYYY-MM-DD'), TO_DATE('2018-08-01', 'YYYY-MM-DD'));

-- 12 Arthur Sean Contra o Mundo
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = '21st Century Wolf'), TO_DATE('2013-05-01', 'YYYY-MM-DD'), TO_DATE('2013-10-15', 'YYYY-MM-DD'));

-- 13 O Anjo Veste Gucci
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Leãozinho Gate'), TO_DATE('2007-08-01', 'YYYY-MM-DD'), TO_DATE('2007-12-20', 'YYYY-MM-DD'));

-- 14 Diabo e o Deus na água da Lua
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Paredemount'), TO_DATE('1998-12-15', 'YYYY-MM-DD'), TO_DATE('1999-06-01', 'YYYY-MM-DD'));

-- 15 Projeto Ave Maria
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Diznei Studios'), TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-08-30', 'YYYY-MM-DD'));
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Warner Primos'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-08-20', 'YYYY-MM-DD'));

-- 16 Meninos Bonzinhos
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Warner Primos'), TO_DATE('2009-10-01', 'YYYY-MM-DD'), TO_DATE('2010-02-15', 'YYYY-MM-DD'));

-- 17 Ande!
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Ande!'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Sonyca Pictures'), TO_DATE('2017-02-01', 'YYYY-MM-DD'), TO_DATE('2017-07-01', 'YYYY-MM-DD'));

-- 18 Mulheres de Branco
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Puxar Animation'), TO_DATE('2011-11-01', 'YYYY-MM-DD'), TO_DATE('2012-04-01', 'YYYY-MM-DD'));

-- 19 História de Brinquedos
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Diznei Studios'), TO_DATE('2000-05-15', 'YYYY-MM-DD'), TO_DATE('2000-10-01', 'YYYY-MM-DD'));

-- 20 O Celular Branco
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = '21st Century Wolf'), TO_DATE('2022-08-15', 'YYYY-MM-DD'), TO_DATE('2022-12-30', 'YYYY-MM-DD'));
INSERT INTO ocupa (id_filme, num_id_estudio, data_inicio, data_termino) VALUES 
((SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), (SELECT num_id_estudio FROM estudio WHERE nome_estudio = 'Sonyca Pictures'), TO_DATE('2022-09-01', 'YYYY-MM-DD'), TO_DATE('2022-12-15', 'YYYY-MM-DD'));
