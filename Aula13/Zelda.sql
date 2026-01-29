/* Lógico_1: */

CREATE TABLE personagem (
    id_personagem int PRIMARY KEY,
    nome char(40),
    raca char(40),
    descricao char(100),
    afiliacao char(40)
);

CREATE TABLE item (
    id_item int PRIMARY KEY,
    nome char(40),
    tipo char(40),
    efeito char(50),
    raridade char(20)
);

CREATE TABLE local (
    id_local int PRIMARY KEY,
    nome char(40),
    tipo char(40),
    descricao char(100)
);

CREATE TABLE tem (
    fk_personagem_id_personagem int,
    fk_item_id_item int
);

CREATE TABLE esta (
    fk_personagem_id_personagem int,
    fk_local_id_local int
);
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_personagem_id_personagem)
    REFERENCES personagem (id_personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_item_id_item)
    REFERENCES item (id_item)
    ON DELETE RESTRICT;
 
ALTER TABLE esta ADD CONSTRAINT FK_esta_1
    FOREIGN KEY (fk_personagem_id_personagem)
    REFERENCES personagem (id_personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE esta ADD CONSTRAINT FK_esta_2
    FOREIGN KEY (fk_local_id_local)
    REFERENCES local (id_local)
    ON DELETE RESTRICT;