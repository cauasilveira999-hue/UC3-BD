/* Lógico_1: */

CREATE TABLE carro (
    ID_carro int PRIMARY KEY,
    nome char(50),
    Raridade char(30),
    rodas char(600),
    boost char(100),
    explosao_gol char(60)
);

CREATE TABLE partida (
    ID_partida int PRIMARY KEY,
    quantidade_jogadores int,
    duracao int,
    data date(10),
    fk_usuario_ID_usuario int
);

CREATE TABLE mapa (
    ID_mapa int PRIMARY KEY,
    nome char(30),
    fk_partida_ID_partida int
);

CREATE TABLE modo (
    ID_modo int PRIMARY KEY,
    nome_modo char(30),
    bola char(15),
    fk_partida_ID_partida int
);

CREATE TABLE Rank (
    ID_rank int PRIMARY KEY,
    MMR int
    quantidade_jogadores int,
    fk_usuario_ID_usuario int
);

CREATE TABLE placar_global (
    ID_top100 int PRIMARY KEY,
    nome char(20),
    MMR int,
    colocacao int,
    fk_usuario_ID_usuario int
);

CREATE TABLE usuario (
    ID_usuario int PRIMARY KEY,
    nome char(20),
    email char(50),
    data_de_criacao date(10)
);

CREATE TABLE Tem (
    fk_usuario_ID_usuario int,
    fk_carro_ID_carro int
);
 
ALTER TABLE partida ADD CONSTRAINT FK_partida_2
    FOREIGN KEY (fk_usuario_ID_usuario)
    REFERENCES usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE mapa ADD CONSTRAINT FK_mapa_2
    FOREIGN KEY (fk_partida_ID_partida)
    REFERENCES partida (ID_partida)
    ON DELETE RESTRICT;
 
ALTER TABLE modo ADD CONSTRAINT FK_modo_2
    FOREIGN KEY (fk_partida_ID_partida)
    REFERENCES partida (ID_partida)
    ON DELETE RESTRICT;
 
ALTER TABLE Rank ADD CONSTRAINT FK_Rank_2
    FOREIGN KEY (fk_usuario_ID_usuario)
    REFERENCES usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE placar_global ADD CONSTRAINT FK_placar_global_2
    FOREIGN KEY (fk_usuario_ID_usuario)
    REFERENCES usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_usuario_ID_usuario)
    REFERENCES usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_carro_ID_carro)
    REFERENCES carro (ID_carro)
    ON DELETE RESTRICT;