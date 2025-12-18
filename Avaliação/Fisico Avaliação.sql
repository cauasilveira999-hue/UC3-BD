/* Lógico Avaliação: */

CREATE TABLE Usuario (
    ID_usuario Number(1000000) PRIMARY KEY,
    Email String(100000),
    Senha Number(1000000),
    Nome String(100000000000),
    Idade Number(10000)
);

CREATE TABLE Conteudo (
    ID_conteudo Number(100000000000) PRIMARY KEY,
    Nome String(100000000000000),
    Ano Number(1000000000),
    Duracao Number(1000000000),
    Episodio Number(10000000),
    Compositor String(10000000000),
    Genero String(1000000000),
    Banda_Cantor String(1000000000),
    Conteudo_TIPO INT
);

CREATE TABLE Artista (
    ID_artista Number(100000) PRIMARY KEY,
    Nome String(100000000000),
    Idade Number(10000),
    Ouvintes_mensais Number(100000)
);

CREATE TABLE Capa (
    ID_capa Number(10000000000) PRIMARY KEY,
    Imagem_da_capa String(10000000)
);

CREATE TABLE Playlist_Tem (
    ID_playlist Number(1000000000000) PRIMARY KEY,
    Nome String(10000000000000),
    Quantidade_musicas Number(10000000000000),
    Duracao Number(10000000000000),
    fk_Usuario_ID_usuario Number(1000000),
    fk_Conteudo_ID_conteudo Number(100000000000)
);

CREATE TABLE Album_Tem (
    ID_album Number(10000000000) PRIMARY KEY,
    Nome String(1000000000000000),
    Quantidade_musicas Number(1000000000000),
    Duracao Number(100000000000000000),
    Banda_cantor String(10000000000000),
    fk_Conteudo_ID_conteudo Number(100000000000),
    fk_Artista_ID_artista Number(100000)
);

CREATE TABLE Tem (
    fk_Artista_ID_artista Number(100000),
    fk_Conteudo_ID_conteudo Number(100000000000)
);

CREATE TABLE Tem (
    fk_Conteudo_ID_conteudo Number(100000000000),
    fk_Capa_ID_capa Number(10000000000)
);

CREATE TABLE Pode (
    fk_Conteudo_ID_conteudo Number(100000000000),
    fk_Playlist_Tem_ID_playlist Number(1000000000000)
);
 
ALTER TABLE Playlist_Tem ADD CONSTRAINT FK_Playlist_Tem_2
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE Playlist_Tem ADD CONSTRAINT FK_Playlist_Tem_3
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo);
 
ALTER TABLE Album_Tem ADD CONSTRAINT FK_Album_Tem_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo);
 
ALTER TABLE Album_Tem ADD CONSTRAINT FK_Album_Tem_3
    FOREIGN KEY (fk_Artista_ID_artista)
    REFERENCES Artista (ID_artista);
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Artista_ID_artista)
    REFERENCES Artista (ID_artista)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Capa_ID_capa)
    REFERENCES Capa (ID_capa)
    ON DELETE RESTRICT;
 
ALTER TABLE Pode ADD CONSTRAINT FK_Pode_1
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Pode ADD CONSTRAINT FK_Pode_2
    FOREIGN KEY (fk_Playlist_Tem_ID_playlist)
    REFERENCES Playlist_Tem (ID_playlist)
    ON DELETE RESTRICT;