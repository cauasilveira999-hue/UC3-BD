/* Logico_viagem: */

CREATE TABLE Usuario (
    ID_usuario int PRIMARY KEY,
    CPF char(11),
    Email char(200),
    Instagram char(200)
);

CREATE TABLE Viagem (
    ID_viagem int PRIMARY KEY,
    Titulo char(1000000),
    Destino char(100000000),
    Data_inicio char(100000000),
    Data_termino char(1000000)
);

CREATE TABLE Local (
    ID_local int PRIMARY KEY,
    Nome char(50),
    Cidade char(10000000),
    Tipo char(10000000)
);

CREATE TABLE Despesas (
    ID_despesas int PRIMARY KEY,
    Valor int,
    Hora char(10000000),
    Descricao char(100000),
    Categoria char(10000000),
    Data char(10000)
);

CREATE TABLE Avaliacao_local_Avalia (
    ID_avaliacao int PRIMARY KEY,
    fk_Usuario_ID_usuario int,
    fk_Local_ID_local int,
    Nota int
);

CREATE TABLE Participa (
    fk_Viagem_ID_viagem int,
    fk_Usuario_ID_usuario int
);

CREATE TABLE Tem (
    fk_Usuario_ID_usuario int,
    fk_Despesas_ID_despesas int
);
 
ALTER TABLE Avaliacao_local_Avalia ADD CONSTRAINT FK_Avaliacao_local_Avalia_2
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE Avaliacao_local_Avalia ADD CONSTRAINT FK_Avaliacao_local_Avalia_3
    FOREIGN KEY (fk_Local_ID_local)
    REFERENCES Local (ID_local);
 
ALTER TABLE Participa ADD CONSTRAINT FK_Participa_1
    FOREIGN KEY (fk_Viagem_ID_viagem)
    REFERENCES Viagem (ID_viagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Participa ADD CONSTRAINT FK_Participa_2
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Despesas_ID_despesas)
    REFERENCES Despesas (ID_despesas)
    ON DELETE SET NULL;