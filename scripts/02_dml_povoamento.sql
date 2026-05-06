-- INSER DIRETORES

INSERT INTO FUNCIONARIO (CPF, NOME_FUNCIONARIO, DATA_NASCIMENTO_FUNCIONARIO, SEXO) VALUES 
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
('239.404.544-04', 'Tiago Camarão', TO_DATE('1954-08-16', 'YYYY-MM-DD'), 'M'),   
('432.404.593-33', 'Timão Burton', TO_DATE('1958-08-25', 'YYYY-MM-DD'), 'M'),     
('293.204.544-32', 'Afonso Cuarteirão', TO_DATE('1961-11-28', 'YYYY-MM-DD'), 'M'),
('423.404.058-63', 'Guilherme do Touro', TO_DATE('1964-10-09', 'YYYY-MM-DD'), 'M'),
('523.424.597-63', 'Lano Varshavski', TO_DATE('1965-06-21', 'YYYY-MM-DD'), 'F'),   
('033.214.054-63', 'Espeto Lee', TO_DATE('1957-03-20', 'YYYY-MM-DD'), 'M'),     
('223.134.984-03', 'Jordão Pela', TO_DATE('1979-02-21', 'YYYY-MM-DD'), 'M'),    
('133.244.952-12', 'Rita Escote', TO_DATE('1937-11-30', 'YYYY-MM-DD'), 'F'),        
('246.475.476-63', 'Micael Baía', 170000.00, TO_DATE('1965-02-17', 'YYYY-MM-DD'), 'M'), 
('542.476.054-07', 'Zé Schneider', 120000.00, TO_DATE('1966-03-01', 'YYYY-MM-DD'), 'M');

-- INSERT ATORES

INSERT INTO FUNCIONARIO (CPF, NOME_FUNCIONARIO, DATA_NASCIMENTO_FUNCIONARIO, SEXO) VALUES 
('384.592.108-71', 'Leonardo DeCapra', TO_DATE('11/11/1974', 'DD/MM/YYYY'), 'M'),   
('712.943.550-24', 'Margarida Robô', TO_DATE('02/07/1990', 'DD/MM/YYYY'), 'F'),  
('105.827.493-66', 'Breno Pinto', TO_DATE('18/12/1963', 'DD/MM/YYYY'), 'M'),       
('840.192.375-92', 'Maria Estripe', TO_DATE('22/06/1949', 'DD/MM/YYYY'), 'F'),    
('561.408.291-15', 'Tomás Cruzeiro', TO_DATE('03/07/1962', 'DD/MM/YYYY'), 'M'),   
('923.714.650-83', 'Zendóia', TO_DATE('01/09/1996', 'DD/MM/YYYY'), 'F'),           
('478.251.904-37', 'Duane "A Pedra" João', TO_DATE('02/05/1972', 'DD/MM/YYYY'), 'M'),
('259.630.817-48', 'Rian Ganso', TO_DATE('12/11/1980', 'DD/MM/YYYY'), 'M'),           
('634.805.729-50', 'Escarlete João-Hans', TO_DATE('22/11/1984', 'DD/MM/YYYY'), 'F'), 
('091.376.582-09', 'Samuel L. Jaquetão', TO_DATE('21/12/1948', 'DD/MM/YYYY'), 'M');

-- INSERT FILMES

INSERT INTO FILME (CLASSIFICACAO_INDICATIVA, ANO_LANCAMENTO, TITULO, CPF_DIRETOR)
VALUES 
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
('10', 2018, 'O Pequeno Hotel Bucarest', '239.404.544-04'),
('12', 2013, 'Arthur Sean Contra o Mundo', '432.404.593-33'),
('L', 2007, 'O Anjo Veste Gucci', '293.204.544-32'),
('16', 1999, 'Diabo e o Deus na água da Lua', '423.404.058-63'),
('10', 2025, 'Projeto Ave Maria', '523.424.597-63'),
('10', 2009, 'Meninos Bonzinhos', '033.214.054-63'),
('16', 2017, 'Ande!', '223.134.984-03'),
('10', 2011, 'Mulheres de Branco', '133.244.952-12'),
('L', 2000, 'História de Brinquedos', '246.475.476-63'),
('18', 2022, 'O Celular Branco', '542.476.054-07');

-- ESPECIALIZAÇÃO DIRETORES

INSERT INTO DIRETOR (CPF_FUNCIONARIO, ESTILO_CINEMATOGRAFICO) VALUES
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
('239.404.544-04', 'Blockbuster Aquático'),
('432.404.593-33', 'Gótico Excêntrico'),
('293.204.544-32', 'Drama Imersivo'),
('423.404.058-63', 'Fantasia Sombria'),
('523.424.597-63', 'Cyberpunk Filosófico'),
('033.214.054-63', 'Manifesto Social'),
('223.134.984-03', 'Terror Psicológico Moderno'),
('133.244.952-12', 'Ficção Científica Histórica'),
('246.475.476-63', 'Explosões Incessantes'),
('542.476.054-07', 'Câmera Lenta e Cores Escuras');

-- ATOR - FILME

-- 1. Uma Luta Antes da Outra

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Roberto', 600000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Militar', 450000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'Uma Luta Antes da Outra'), 'Marina', 300000.00
);

-- 2. Pregadores

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Elias', 550000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Pregadores'), 'Fiel Escudeiro', 400000.00
);

-- 3. Anatomia de uma Subida

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Juíza', 350000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Felipe', 280000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'Anatomia de uma Subida'), 'Advogada de Defesa', 420000.00
);

-- 4. Ricas Criaturas

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Helena', 850000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ricas Criaturas'), 'Herdeira Misteriosa', 500000.00
);

-- 5. O Agente Exposto

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Ricardo', 900000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Agente Exposto'), 'Informante da KGB', 700000.00
);

-- 6. Nada em Nenhum Lugar Nunca

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Alice', 400000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Cientista-Chefe', 650000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Nada em Nenhum Lugar Nunca'), 'Eduardo', 500000.00
);

-- 7. Guardiões do Globo

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Super-Herói Aposentado', 800000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Guardiões do Globo'), 'Daniel', 450000.00
);

-- 8. Entre Garfos e Revelações

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Rodrigo', 300000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Carmem', 700000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'Entre Garfos e Revelações'), 'Mordomo Suspeito', 350000.00
);

-- 9. Valor Emocional

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Thiago', 500000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Valor Emocional'), 'Psicóloga', 450000.00
);

-- 10. Hamlet

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Príncipe Dinamarquês', 750000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Sofia', 600000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Hamlet'), 'Rei Usurpador', 650000.00
);

-- 11. O Pequeno Hotel Bucarest

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Concierge', 500000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Pequeno Hotel Bucarest'), 'Isabela', 320000.00
);

-- 12. Arthur Sean Contra o Mundo

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Lucas', 550000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Arthur Sean Contra o Mundo'), 'Guitarrista Rival', 400000.00
);

-- 13. O Anjo Veste Gucci

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Editora-Chefe', 950000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Luiza', 550000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Anjo Veste Gucci'), 'Estagiária', 480000.00
);

-- 14. Diabo e o Deus na água da Lua

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Capitão do Barco', 400000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Diabo e o Deus na água da Lua'), 'Marcelo', 380000.00
);

-- 15. Projeto Ave Maria

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Astronauta Sobrevivente', 600000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'Projeto Ave Maria'), 'Fernando', 650000.00
);

-- 16. Meninos Bonzinhos

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Detetive Particular', 500000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Paulo', 480000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Breno Pinto'),
    (SELECT id_filme FROM filme WHERE titulo = 'Meninos Bonzinhos'), 'Henrique', 420000.00
);

-- 17. Ande!

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Duane "A Pedra" João'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'João', 500000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Zendóia'),
    (SELECT id_filme FROM filme WHERE titulo = 'Ande!'), 'Hipnotizadora', 350000.00
);

-- 18. Mulheres de Branco

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Escarlete João-Hans'),
    (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Médica Cirurgiã', 600000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Maria Estripe'),
    (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Lúcia', 800000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Margarida Robô'),
    (SELECT id_filme FROM filme WHERE titulo = 'Mulheres de Branco'), 'Enfermeira-Chefe', 450000.00
);

-- 19. História de Brinquedos

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Tomás Cruzeiro'),
    (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Tiago', 700000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'História de Brinquedos'), 'Patrulheiro Espacial', 500000.00
);

-- 20. O Celular Branco

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Samuel L. Jaquetão'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Assassino', 400000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Leonardo DeCapra'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Otávio', 550000.00
);

INSERT INTO ator_filme (cpf_ator, id_filme, personagem, cache) VALUES (
    (SELECT a.cpf_funcionario FROM ator a JOIN funcionario f ON a.cpf_funcionario = f.cpf_funcionario WHERE f.nome_funcionario = 'Rian Ganso'),
    (SELECT id_filme FROM filme WHERE titulo = 'O Celular Branco'), 'Investigador', 350000.00

-- INSERT ESTUDIOS

INSERT INTO ESTUDIO (NOME_ESTUDIO, METRAGEM, TEM_CHROMA_KEY) VALUES
('Warner Primos', 2500.50, 'S'),
('Multiversal Pictures', 3000.00, 'S'),
('Paredemount', 1800.75, 'N'),
('21st Century Wolf', 2200.00, 'S'),
('Puxar Animation', 1500.00, 'S'),
('Diznei Studios', 4000.00, 'S'),
('Sonyca Pictures', 2100.25, 'N'),
('Leãozinho Gate', 1700.00, 'S');
