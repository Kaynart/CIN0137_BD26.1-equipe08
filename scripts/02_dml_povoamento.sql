-- INSERINDO NA TABELA FUNCIONARIO (10 Diretores e 10 Atores e 15 Figurinistas)
INSERT INTO FUNCIONARIO (cpf, nome_funcionario, data_nascimento_funcionario, sexo) VALUES 
('293.404.544-63', 'Estevão Espilbergo', TO_DATE('1946-12-18', 'YYYY-MM-DD'), 'M'),
('563.823.158-73', 'Quinto Tarantela', TO_DATE('1963-03-27', 'YYYY-MM-DD'), 'M'),
('248.494.604-53', 'Gretchen Gerving', TO_DATE('1983-08-04', 'YYYY-MM-DD'), 'F'),
('293.653.544-06', 'Martinho Escocês', TO_DATE('1942-11-17', 'YYYY-MM-DD'), 'M'),
('653.404.344-63', 'Cristovão Nulo', TO_DATE('1970-07-30', 'YYYY-MM-DD'), 'M'),
('293.534.566-73', 'Wesley Andarilho', TO_DATE('1969-05-01', 'YYYY-MM-DD'), 'M'),
('242.404.944-69', 'Dênis Vila-Nova', TO_DATE('1967-10-03', 'YYYY-MM-DD'), 'M'),
('036.404.546-99', 'Sofia Cúpula', TO_DATE('1971-05-14', 'YYYY-MM-DD'), 'F'),
('434.444.544-13', 'Pedro Almodólar', TO_DATE('1949-09-25', 'YYYY-MM-DD'), 'M'),
('203.404.492-23', 'Jorge Lucas', TO_DATE('1944-05-14', 'YYYY-MM-DD'), 'M'),
('384.592.108-71', 'Leonardo DeCapra', TO_DATE('1974-11-11', 'YYYY-MM-DD'), 'M'),
('712.943.550-24', 'Margarida Robô', TO_DATE('1990-07-02', 'YYYY-MM-DD'), 'F'),
('105.827.493-66', 'Breno Pinto', TO_DATE('1963-12-18', 'YYYY-MM-DD'), 'M'),     
('840.192.375-92', 'Maria Estripe', TO_DATE('1949-06-22', 'YYYY-MM-DD'), 'F'),
('561.408.291-15', 'Tomás Cruzeiro', TO_DATE('1962-07-03', 'YYYY-MM-DD'), 'M'),
('923.714.650-83', 'Zendóia', TO_DATE('1996-09-01', 'YYYY-MM-DD'), 'F'),
('478.251.904-37', 'Duane "A Pedra" João', TO_DATE('1972-05-02', 'YYYY-MM-DD'), 'M'),
('259.630.817-48', 'Rian Ganso', TO_DATE('1980-11-12', 'YYYY-MM-DD'), 'M'),
('634.805.729-50', 'Escarlete João-Hans', TO_DATE('1984-11-22', 'YYYY-MM-DD'), 'F'),
('091.376.582-09', 'Samuel L. Jaquetão', TO_DATE('1948-12-21', 'YYYY-MM-DD'), 'M'),
('492.301.558-12', 'Edith Cabeça', TO_DATE('1997-10-28', 'YYYY-MM-DD'), 'F'),
('823.109.445-67', 'Coleth Atmadeira', TO_DATE('1948-12-30', 'YYYY-MM-DD'), 'F'),
('156.778.234-09', 'Areia Powell', TO_DATE('1960-04-07', 'YYYY-MM-DD'), 'F'),
('121.667.490-57', 'Naum Alves de Sousa', TO_DATE('1999-10-05', 'YYYY-MM-DD'), 'M'),
('934.120.556-88', 'Milena Canhoneira', TO_DATE('1946-01-01', 'YYYY-MM-DD'), 'F'),
('642.001.993-85', 'Paco Rabane', TO_DATE('1934-02-18', 'YYYY-MM-DD'), 'M'),
('227.843.102-45', 'Marilia Bode', TO_DATE('2004-02-12', 'YYYY-MM-DD'), 'F'),
('159.332.887-12', 'João Mole', TO_DATE('1931-09-19', 'YYYY-MM-DD'), 'M'),
('601.334.789-21', 'Rute Carroça', TO_DATE('1960-04-10', 'YYYY-MM-DD'), 'F'),
('221.445.009-88', 'Walter Planted', TO_DATE('1946-11-03', 'YYYY-MM-DD'), 'M'),
('218.445.660-33', 'Jorge Armário', TO_DATE('1934-07-11', 'YYYY-MM-DD'), 'M'),
('388.502.113-90', 'Kalma Vivinho', TO_DATE('1950-05-19', 'YYYY-MM-DD'), 'F'),
('741.009.662-34', 'Ana Roda', TO_DATE('1931-10-30', 'YYYY-MM-DD'), 'F'),
('054.112.776-49', 'Domenico Doce', TO_DATE('1958-08-13', 'YYYY-MM-DD'), 'M'),
('512.667.334-55', 'Jaqueline Durona', TO_DATE('1966-12-24', 'YYYY-MM-DD'), 'F'),
('098.445.121-66', 'Érica Ishioca', TO_DATE('1938-07-12', 'YYYY-MM-DD'), 'F'),
('714.283.001-44', 'Antônio Poço', TO_DATE('1935-06-02', 'YYYY-MM-DD'), 'M');

 


    
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
('091.376.582-09', 'DRT-5512');

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
('203.404.492-23', 'Space Opera Clássica');

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
INSERT INTO FILME (classificacao_indicativa, ano_lancamento, titulo, cpf_diretor) VALUES 
('14', 2025, 'Uma Luta Antes da Outra', '293.404.544-63'),
('16', 2025, 'Pregadores', '563.823.158-73'),
('12', 2024, 'Anatomia de uma Subida', '248.494.604-53'),
('16', 2024, 'Ricas Criaturas', '293.653.544-06'),
('12', 2025, 'O Agente Exposto', '653.404.344-63'),
('12', 2023, 'Nada em Nenhum Lugar Nunca', '293.534.566-73'),
('10', 2021, 'Guardiões do Globo', '242.404.944-69'),
('12', 2019, 'Entre Garfos e Revelações', '036.404.546-99'),
('14', 2025, 'Valor Emocional', '434.444.544-13'),
('14', 2025, 'Hamlet', '203.404.492-23'),
('10', 2018, 'O Pequeno Hotel Bucarest', '293.404.544-63'),
('12', 2013, 'Arthur Sean Contra o Mundo', '563.823.158-73'),
('L', 2007, 'O Anjo Veste Gucci', '248.494.604-53'),
('16', 1999, 'Diabo e o Deus na água da Lua', '293.653.544-06'),
('10', 2025, 'Projeto Ave Maria', '653.404.344-63'),
('10', 2009, 'Meninos Bonzinhos', '293.534.566-73'),
('16', 2017, 'Ande!', '242.404.944-69'),
('10', 2011, 'Mulheres de Branco', '036.404.546-99'),
('L', 2000, 'História de Brinquedos', '434.444.544-13'),
('18', 2022, 'O Celular Branco', '203.404.492-23');


-- ATOR - FILME

-- 1. Uma Luta Antes da Outra
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Roberto', 600000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Militar', 450000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Marina', 300000.00
);

-- 2. Pregadores
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Elias', 550000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Fiel Escudeiro', 400000.00
);

-- 3. Anatomia de uma Subida
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Juíza', 350000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Felipe', 280000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Advogada de Defesa', 420000.00
);

-- 4. Ricas Criaturas
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Helena', 850000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Herdeira Misteriosa', 500000.00
);

-- 5. O Agente Exposto
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Ricardo', 900000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Informante da KGB', 700000.00
);

-- 6. Nada em Nenhum Lugar Nunca
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Alice', 400000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Cientista-Chefe', 650000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Eduardo', 500000.00
);

-- 7. Guardiões do Globo
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Super-Herói Aposentado', 800000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Daniel', 450000.00
);

-- 8. Entre Garfos e Revelações
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Rodrigo', 300000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Carmem', 700000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Mordomo Suspeito', 350000.00
);

-- 9. Valor Emocional
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Thiago', 500000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Psicóloga', 450000.00
);

-- 10. Hamlet
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Príncipe Dinamarquês', 750000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Sofia', 600000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Rei Usurpador', 650000.00
);

-- 11. O Pequeno Hotel Bucarest
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Concierge', 500000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Isabela', 320000.00
);

-- 12. Arthur Sean Contra o Mundo
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Lucas', 550000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Guitarrista Rival', 400000.00
);

-- 13. O Anjo Veste Gucci
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Editora-Chefe', 950000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Luiza', 550000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Estagiária', 480000.00
);

-- 14. Diabo e o Deus na água da Lua
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Capitão do Barco', 400000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Marcelo', 380000.00
);

-- 15. Projeto Ave Maria
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Astronauta Sobrevivente', 600000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Fernando', 650000.00
);

-- 16. Meninos Bonzinhos
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Detetive Particular', 500000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Paulo', 480000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Henrique', 420000.00
);

-- 17. Ande!
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'João', 500000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'Hipnotizadora', 350000.00
);

-- 18. Mulheres de Branco
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Médica Cirurgiã', 600000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Lúcia', 800000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Enfermeira-Chefe', 450000.00
);

-- 19. História de Brinquedos
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Tiago', 700000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Patrulheiro Espacial', 500000.00
);

-- 20. O Celular Branco
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Assassino', 400000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Otávio', 550000.00
);
INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache_ator) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Investigador', 350000.00
);

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

--INSERINDO NA TABELA EQUIPAMENTOS
INSERT INTO EQUIPAMENTO (id_equipamento, tipo, valor) VALUES 
(1, 'Câmera IMAX PRO 70mm', 250000.00),
(2, 'Kit Lentes SonyVision', 85000.50),
(3, 'Guindaste Pequeno', 120000.00),
(4, 'Stream Deck', 15000.00),
(5, 'Kit Iluminação Arri Skypanel', 45000.00),
(6, 'Drone Cinematográfico Avançado', 25000.00),
(7, 'Estabilizador Steadicam Pro', 35000.00),
(8, 'Microfone Fifine AM8', 5000.00),
(9, 'Câmera GoPRO 4.0', 1200.00),
(10, 'Monitor de Diretor 16k', 8500.00),
(11, 'Câmera Canon EOS R10', 180000.00),
(12, 'Lente Profissional', 65000.00),
(13, 'Refletor 18K', 22000.00),
(14, 'Gerador Silencioso 100kVA', 30000.00),
(15, 'Kit Microfones Lapela ', 8000.00),
(16, 'Trilho movedor de Câmeras', 45000.00),
(17, 'Máquina de Fumaça', 3500.00),
(18, 'Chroma Key Portatil (Verde)', 1500.00),
(19, 'Lampadas Flexiveis', 2500.00),
(20, 'Cadeira Ergonomica', 500.00);

-- INSERINDO NA TABELA DEPENDENTES
INSERT INTO DEPENDENTE (cpf_funcionario_responsavel, nome_dependente, data_nascimento_dependente, grau_parentesco) VALUES 
('293.404.544-63', 'QuendolosPadresZiguiriguidun Souza', TO_DATE('2010-05-12', 'YYYY-MM-DD'), 'Irmão'),
('293.404.544-63', 'Neuvillette Carvalho', TO_DATE('2013-08-20', 'YYYY-MM-DD'), 'Filho'),
('105.827.493-66', 'Simon Pinto', TO_DATE('2011-04-25', 'YYYY-MM-DD'), 'Irmão'),
('840.192.375-92', 'Dexter Morgan', TO_DATE('2015-11-03', 'YYYY-MM-DD'), 'Pai'),
('561.408.291-15', 'Jurandira Salvino', TO_DATE('2008-02-28', 'YYYY-MM-DD'), 'Tia'),
('036.404.546-99', 'Alice Maravilha', TO_DATE('2018-07-14', 'YYYY-MM-DD'), 'Filha'),
('384.592.108-71', 'Emerick Silva', TO_DATE('2020-01-10', 'YYYY-MM-DD'), 'Sobrinho'),
('478.251.904-37', 'Joãozinho Noroxius', TO_DATE('2016-09-07', 'YYYY-MM-DD'), 'Filho');
