USE alienplanet;
CREATE  DATABASE alienplanet;

CREATE TABLE bloom(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

SELECT*FROM bloom;

CREATE TABLE verbo(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nomeVerbo VARCHAR(45),
    fk_bloom_id INT
);
SELECT*FROM verbo;

CREATE TABLE competencia(
	id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(45) 
);
SELECT*FROM competencia;

ALTER TABLE competencia ADD COLUMN fk_verbo_id INT;


CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(200)
);
SELECT*FROM historia;

CREATE TABLE missao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    hassh NCHAR(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT 
);
SELECT*FROM missao;

CREATE TABLE etapa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);

DROP TABLE etapa;

SELECT*FROM etapa;

CREATE TABLE missaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);
INSERT INTO missaoHistoria()
SELECT*FROM missaoHistoria;

ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 SHOW TABLES;

ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;
 
ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;
 
ALTER TABLE missaoHistoria ADD CONSTRAINT FK_missaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;
    
-- INSERÇÕES DAS TABELAS -- 

INSERT INTO bloom (nome) VALUES
("Memorizar"),
("Compreender"),
("Aplicar"),
("Analisar"),
("Avaliar"),
("Criar");
SELECT*FROM bloom;
SELECT*FROM verbo;
INSERT INTO verbo(nomeVerbo,fk_bloom_id) VALUES
("Listar",1),
("Relembrar",1),
("Reconhecer",1),
("Identificar",1),
("Localizar",1),
("Descrever",1),
("Criar",1);

INSERT INTO verbo(nomeVerbo,fk_bloom_id) VALUES
("Esquematizar",2),
("Relacionar",2),
("Explicar",2),
("Demonstrar",2),
("Parafrasear",2),
("Associar",2),
("Converter",2);

INSERT INTO verbo(nomeVerbo,fk_bloom_id) VALUES
("Utilizar",3),
("Implementar",3),
("Modificar",3),
("Experimentar",3),
("Calcular",3),
("Demonstrar",3),
("Classificar",3);



INSERT INTO verbo(nomeVerbo,fk_bloom_id) VALUES
("Resolver",4),
("Categorizar",4),
("Diferenciar",4),
("Comparar",4),
("Explicar",4),
("Integrar",4),
("Investigar",4);

INSERT INTO verbo(nomeVerbo,fk_bloom_id) VALUES
("Defender",5),
("Delimitar",5),
("Estimar",5),
("Selecionar",5),
("Justificar",5),
("Comparar",5),
("Explicar",5);

INSERT INTO verbo(nomeVerbo,fk_bloom_id) VALUES
("Elaborar",6),
("Desenhar",6),
("Produzir",6),
("Prototipar",6),
("Traçar",6),
("Idear",6),
("Inventar",6);

-- INSERÇÃO DA TABELA COMPETÊNCIA -- 

INSERT INTO competencia(descricao) VALUES
("Listar"),
("Reconhecer"),
("Esquematizar"),
("Relacionar"),
("Utilizar"),
("Implementar"),
("REsolver"),
("Categorizar"),
("Delimitar"),
("Elaborar");

-- UPDATE DAS COMPETENCIAS -- 
UPDATE competencia
SET descricao = 'O furão deve LOCALIZAR as principais tags HTML para matar o inimigo'
WHERE id = 1; 

UPDATE competencia
SET descricao = 'O furão deve RECONHECER os seletores CSS para se camuflar do inimigo '
WHERE id =2 ; 

UPDATE competencia
SET descricao = 'O furão deve ESQUEMATIZAR os scripts JS para descobrir os pontos fracos do inimigo'
WHERE id = 3; 

UPDATE competencia
SET descricao = 'O furão deve CONVERTER as exceptions para interromper o fluxo inimigo '
WHERE id = 4; 

UPDATE competencia
SET descricao = 'O furão deve MODIFICAR as conditions do ambiente para evoluir suas habilidades de batalha'
WHERE id = 5; 

UPDATE competencia
SET descricao = 'O furão deve EXPERIMENTAR os loops e explorar as vantagens que ele pode ter'
WHERE id = 6; 

UPDATE competencia
SET descricao = 'O furão deve RESOLVER os arrays inimigos para passar do portal maligno '
WHERE id = 7; 

UPDATE competencia
SET descricao = 'O furão CATEGORIZAR as functions inimigas para verificar se é capaz de enfrentá-las s '
WHERE id = 8; 

UPDATE competencia
SET descricao = 'O furão deve DEFENDER seus objects para que não seja prejudicado por ataques inimigos'
WHERE id = 9; 

UPDATE competencia
SET descricao = 'O furão deve ELABORAR databases para se curar'
WHERE id = 10; 


SELECT*FROM COMPETENCIA;

-- INSERÇÃO DA TABELA HISTORIA -- 
INSERT INTO historia(titulo,descricao,final) VALUES("Planeta Alien","No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.
Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.
Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens.
A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres.","Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz.");

SELECT*FROM historia;

-- INSERÇÃO DA TABELA MISSÃO --
INSERT INTO missao(hassh,titulo,forca) VALUES ("ngfg452","Tags",1);
INSERT INTO missao(hassh,titulo,forca) VALUES ("dff7854","Seletores",2);
INSERT INTO missao(hassh,titulo,forca) VALUES ("fgfg956","Scripts",3);
INSERT INTO missao(hassh,titulo,forca) VALUES ("gfhhg56","Exceptions",4);
INSERT INTO missao(hassh,titulo,forca) VALUES ("rtgf789","Conditions",5);
INSERT INTO missao(hassh,titulo,forca) VALUES ("ngfv789","Loops",6);
INSERT INTO missao(hassh,titulo,forca) VALUES ("lkok234","Arrays",7);
INSERT INTO missao(hassh,titulo,forca) VALUES ("aswd345","Functions",8);
INSERT INTO missao(hassh,titulo,forca) VALUES ("bngx765","Objects",9);
INSERT INTO missao(hassh,titulo,forca) VALUES ("dffh456","DataBases",10);

SELECT*FROM missao;

-- INSERÇÃO DA TABELA ETAPA -- 
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Tags",1,"C");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Selectores",2,"A");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Scripts",3,"H");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Exceptions",4,"C");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Conditions",5,"H");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Loops",6,"A");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Arrays",7,"H");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Functions",8,"H");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Objects",9,"H");
INSERT INTO etapa(instrucao, ponto, tipo) VALUES("Encontrar Databases",10,"A");

SELECT*FROM etapa;