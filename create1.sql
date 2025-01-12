PRAGMA foreign_keys=OFF;


DROP TABLE IF EXISTS HÓSPEDE;
DROP TABLE IF EXISTS FUNCIONÁRIO;
DROP TABLE IF EXISTS COMODIDADE;
DROP TABLE IF EXISTS FUNCIONÁRIO_COMODIDADE;
DROP TABLE IF EXISTS FIDELIDADE1;
DROP TABLE IF EXISTS FIDELIDADE2;
DROP TABLE IF EXISTS QUARTO;
DROP TABLE IF EXISTS TIPO_DE_QUARTO;
DROP TABLE IF EXISTS RESERVA;
DROP TABLE IF EXISTS HÓSPEDE_RESERVA;
DROP TABLE IF EXISTS RESERVA_QUARTO;
DROP TABLE IF EXISTS PAGAMENTO;
DROP TABLE IF EXISTS TIPO_DE_RESERVA;
DROP TABLE IF EXISTS BEBIDA;
DROP TABLE IF EXISTS REFEIÇÃO;

CREATE TABLE HÓSPEDE
(
    id_hóspede INTEGER,
    nº_quarto INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    morada VARCHAR(100) NOT NULL,
    telefone INTEGER NOT NULL,
    id_fidelidade INTEGER,
        PRIMARY KEY(id_hóspede),
        FOREIGN KEY(nº_quarto) REFERENCES QUARTO(nº_quarto),
        FOREIGN KEY(id_fidelidade) REFERENCES FIDELIDADE2(id_fidelidade) ON DELETE CASCADE ON DELETE SET NULL
);

CREATE TABLE FUNCIONÁRIO
(
    id_funcionário INTEGER,
    salário INTEGER NOT NULL CHECK(salário >= 900),
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    morada VARCHAR(100) NOT NULL,
    telefone INTEGER NOT NULL,
        PRIMARY KEY(id_funcionário)
);


CREATE TABLE COMODIDADE
(
    id_comodidade INTEGER,
    nome VARCHAR(50) NOT NULL,
    lotação_max INTEGER NOT NULL CHECK(lotação_max > 0 AND lotação_max < 50) ,
    nº_funcionários INTEGER NOT NULL CHECK(nº_funcionários>=2),
        PRIMARY KEY(id_comodidade)
);

CREATE TABLE FUNCIONÁRIO_COMODIDADE
(
    id_funcionário INTEGER,
    id_comodidade VARCHAR(50) NOT NULL,
        PRIMARY KEY(id_funcionário,id_comodidade),
        FOREIGN KEY(id_funcionário) REFERENCES FUNCIONÁRIO(id_funcionário) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY(id_comodidade) REFERENCES COMODIDADE(id_comodidade) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE FIDELIDADE1
(
    const_estadia INTEGER,
    descontos INTEGER NOT NULL CHECK(0<descontos<=25), 
        PRIMARY KEY(const_estadia)
);

CREATE TABLE FIDELIDADE2
(
    id_fidelidade INTEGER,
    const_estadia INTEGER NOT NULL, --definimos como chave estrangeira para se conectar com FIDELIDADE1
    data_adesão DATE,
        PRIMARY KEY(id_fidelidade),
        FOREIGN KEY(const_estadia) REFERENCES FIDELIDADE1(const_estadia) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE QUARTO
(
    nº_quarto INTEGER,
    estado VARCHAR(20) NOT NULL CHECK(estado ='Livre' OR estado = 'Ocupado'),
    nome VARCHAR(40) NOT NULL,
        PRIMARY KEY(nº_quarto),
        FOREIGN KEY(nome) REFERENCES TIPO_DE_QUARTO(id_tipo_de_quarto) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE TIPO_DE_QUARTO
(
    nome VARCHAR(40) NOT NULL,
    id_tipo_de_quarto INTEGER,
    capacidade_max INTEGER NOT NULL CHECK(0<capacidade_max<=4),
        PRIMARY KEY(id_tipo_de_quarto)
);

CREATE TABLE RESERVA
(
    id_reserva INTEGER,
    checkout DATETIME NOT NULL CHECK(checkout>checkin),
    checkin DATETIME NOT NULL CHECK(checkin<checkout),
    preço INTEGER NOT NULL CHECK(preço>0),
    id_tipo_reserva INTEGER NOT NULL,
        PRIMARY KEY(id_reserva),
        FOREIGN KEY(id_tipo_reserva) REFERENCES TIPO_DE_RESERVA(id_tipo_reserva) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE HÓSPEDE_RESERVA
(
    id_hóspede INTEGER,
    id_reserva INTEGER,
        PRIMARY KEY(id_hóspede,id_reserva),
        FOREIGN KEY(id_hóspede) REFERENCES HÓSPEDE(id_hóspede) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY(id_reserva) REFERENCES RESERVA(id_reserva) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE RESERVA_QUARTO
(
    id_reserva INTEGER,
    nº_quarto INTEGER,
        PRIMARY KEY(id_reserva, nº_quarto),
        FOREIGN KEY(id_reserva) REFERENCES RESERVA(id_reserva) ON UPDATE CASCADE ON DELETE CASCADE ,
        FOREIGN KEY(nº_quarto) REFERENCES QUARTO(nº_quarto) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PAGAMENTO
(
    id_pagamento INTEGER,
    NIF NUMERIC(9,0) NOT NULL CHECK(LENGTH(NIF)==9),
    forma_pagamento VARCHAR(20) NOT NULL,
    id_reserva INTEGER NOT NULL,
        PRIMARY KEY(id_pagamento),
        FOREIGN KEY(id_reserva) REFERENCES RESERVA(id_reserva) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE TIPO_DE_RESERVA
(
    id_tipo_reserva INTEGER,
    nome_tipo_reserva VARCHAR(20) NOT NULL CHECK(nome_tipo_reserva = 'VIP' OR nome_tipo_reserva= 'Normal'),
        PRIMARY KEY(id_tipo_reserva)
);

CREATE TABLE BEBIDA
(
    id_bebida INTEGER,
    nome_bebida VARCHAR(30) NOT NULL,
    id_tipo_reserva INTEGER NOT NULL,
        PRIMARY KEY(id_bebida),
        FOREIGN KEY(id_tipo_reserva) REFERENCES TIPO_DE_RESERVA(id_tipo_reserva) ON UPDATE CASCADE ON DELETE CASCADE
        CHECK(id_tipo_reserva = 1)
);

CREATE TABLE REFEIÇÃO
(
    id_refeições INTEGER,
    nome_refeição VARCHAR(30) NOT NULL,
    id_tipo_reserva INTEGER NOT NULL,
        PRIMARY KEY(id_refeições),
        FOREIGN KEY(id_tipo_reserva) REFERENCES TIPO_DE_RESERVA(id_tipo_reserva) ON UPDATE CASCADE ON DELETE CASCADE
        CHECK(id_tipo_reserva = 1)
);