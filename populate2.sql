PRAGMA foreign_keys = ON;

INSERT INTO TIPO_DE_RESERVA (id_tipo_de_reserva, nome_tipo_de_reserva)
VALUES
(1, 'VIP'),
(2, 'Normal');


INSERT INTO FIDELIDADE1 (const_estadia, descontos)
VALUES
(0,0),
(5,5), --5 estadias para ter 5%
(10,10), --10 estadias para ter 10%
(15,15),
(20,20),
(25,25); --25 estadias para têr 25%

INSERT INTO FIDELIDADE2 (id_fidelidade, const_estadia, data_adesão)
VALUES
(1, 5, '2023-01-01'),
(2, 10, '2023-05-10'),
(3, 25, '2024-02-15'),
(4, 20, '2024-02-16'),
(5, 15, '2024-04-22'),
(6, 25, '2024-05-25'),
(7, 5, '2024-06-15'),
(8, 5, '2024-06-19'),
(9, 10, '2024-07-01'),
(10, 15, '2024-08-05'),
(11, 0, NULL), --NULL neste caso significa que não aderiram ao programa de fidelidade
(12, 0, NULL),
(13, 25, '2024-08-06'),
(14, 10, '2024-08-11'),
(15, 10, '2024-09-08'),
(16, 5, '2024-10-04'),
(17, 20, '2024-11-20'),
(18, 5, '2024-11-22'),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL);

INSERT INTO TIPO_DE_QUARTO (id_tipo_de_quarto, nome, capacidade_max)
VALUES
(1, 'Individual', 1),
(2, 'Duplo', 2),
(3, 'Suite', 3),
(4, 'Família', 4);

INSERT INTO QUARTO (nº_quarto, estado, id_tipo_de_quarto)
VALUES
(101,'Ocupado',1),
(102,'Ocupado',2),
(103,'Ocupado',1),
(104,'Ocupado',3),
(105,'Ocupado',1),
(106,'Ocupado',4),
(107,'Ocupado',1),
(108,'Ocupado',3),
(109,'Ocupado',1),
(110,'Ocupado',2),
(201,'Ocupado',2),
(202,'Ocupado',1),
(203,'Livre',2),
(204,'Livre',4),
(205,'Livre',2),
(206,'Livre',3),
(207,'Livre',3),
(208,'Livre',1),
(209,'Livre',4),
(210,'Livre',2);


INSERT INTO FUNCIONÁRIO (id_funcionário, salário, nome, data_nascimento, morada, telefone)
VALUES
(1, 1500, 'Carlos Pereira', '1980-12-05', 'Rua Costa Cabral', 965432109),
(2, 2000, 'Ana Costa', '1990-08-12', 'Avenida Dos Aliados', 987654321),
(3, 1600, 'Luis Santos', '1985-07-22', 'Rua Engenheiro Ferreira Dias', 912345678),
(4, 1800, 'Marta Ribeiro', '1992-03-15', 'Rua Formosa', 923456789),
(5, 2540, 'Pedro Ferreira', '1992-07-08', 'Rua do Comércio', 956789012),
(6, 1300, 'Inês Lopes', '1983-12-21', 'Avenida das Nações', 967890123),
(7, 1100, 'Miguel Rocha', '1995-02-15', 'Largo da Estação', 978901234),
(8, 1413, 'Sofia Martins', '1987-10-10', 'Rua do Mercado', 989012345),
(9, 1789, 'Tiago Almeida', '1979-01-05', 'Bairro Novo', 910123456),
(10, 950, 'Patrícia Nunes', '1993-09-19', 'Estrada Velha', 921234567),
(11, 1200, 'Ana Silva', '1985-03-12', 'Rua das Palmeiras', 912345678),
(12, 950, 'Carlos Santos', '1990-07-25', 'Avenida dos Navegantes', 923456789),
(13, 1350, 'Joana Ribeiro', '1988-11-15', 'Travessa do Sol', 934567890),
(14, 1100, 'Paulo Oliveira', '1992-02-20', 'Largo do Castelo', 945678901),
(15, 1400, 'Mariana Costa', '1980-06-05', 'Rua da Alegria', 956789012),
(16, 1250, 'Miguel Lopes', '1987-12-10', 'Avenida da Liberdade', 967890123),
(17, 950, 'Sofia Martins', '1995-09-30', 'Rua das Pétalas', 978901234),
(18, 1000, 'Rafael Almeida', '1991-04-18', 'Praça do Comércio', 989012345),
(19, 1300, 'Beatriz Ferreira', '1993-08-22', 'Rua do Carmo', 990123456),
(20, 1150, 'Diogo Figueiredo', '1986-01-09', 'Estrada Nacional', 991234567),
(21, 1100, 'Joana Morgado', '1994-08-12', 'Rua do Carmo', 990123444),
(22, 2400, 'Pedro Dinis', '1986-11-26', 'Bairro Novo', 991234500),
(23, 1300, 'Rui Pedro', '1999-10-12', 'Rua do Comércio', 990123411);


INSERT INTO COMODIDADE (id_comodidade, nome, lotação_max, nº_funcionários)
VALUES
(1,'Piscina Interior', 20, 2),
(2, 'Piscina Exterior', 40, 5),
(3,'Ginásio', 30, 7),
(4,'Sauna', 8, 3),
(5,'Spa e Massagem', 15, 9),
(6,'Sala de Jogos', 21, 10),
(7,'Parque Infantil', 15, 5),
(8,'Campo de Ténis', 4, 2),
(9,'Campo de Golfe', 10, 10),
(10,'Restaurante Gourmet', 45, 20);

INSERT INTO FUNCIONÁRIO_COMODIDADE (id_funcionário, id_comodidade)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 8),
(5, 7),
(6, 6),
(7, 3),
(8, 10),
(9, 9),
(10, 2),
(11, 10),
(12, 4),
(13, 7),
(14, 5),
(15, 9),
(16, 3),
(17, 4),
(18, 8),
(19, 5),
(20, 6),
(21, 3),
(22, 7),
(23, 5);


INSERT INTO HÓSPEDE (id_hóspede, nº_quarto, nome, data_nascimento, morada, telefone, id_fidelidade)
VALUES
(1, 101, 'João Gonçalves','1990-5-14', 'Rua das Flores',912345678, 1),
(2, 102, 'Maria José','1990-6-16', 'Rua da Liberdade',923454267, 2),
(3, 102, 'André Lourenço','2000-8-20','Bairro dos Leões',976486463, 3),
(4, 103, 'João Sousa','2000-10-5','Rua dos Pássaros',987654087, 4),
(5, 104, 'Gustavo Silva','2005-11-18','Rua do Gato',976543860, 5),
(6, 104, 'José Peixoto','2004-12-4','Praça da Amizade',941236060, 6),
(7, 104, 'António Santos','2001-5-25','Avenida da Boavista',987123098, 7),
(8, 105, 'Lourenço Oliveira','1975-6-21','Praça do Jardim',954367901, 8),
(9, 106, 'Marco Lopes','1977-1-21','Rua do Cão ',998765432, 9),
(10, 106,'Marisa Rocha','1989-9-25','Largo do Jardim',964906123, 10),
(11, 106, 'João Silva', '1990-05-15', 'Rua Aleixo', 912345678, 11),
(12, 106, 'Maria Souza', '1985-03-20', 'Rua do cão', 934567890, 12),
(13, 107, 'Pedro Ferreira', '1992-04-10', 'Rua Santa Catarina', 912453678, 13),
(14, 108, 'Ana Martins', '1987-11-30', 'Rua do Almada', 917654321, 14),
(15, 108, 'Rui Pereira', '1995-07-25', 'Avenida dos Aliados', 927867544, 15),
(16, 108, 'Sofia Monteiro', '1998-09-10', 'Rua Miguel Bombarda', 937564123, 16),
(17, 109, 'Carla Gomes', '1993-03-18', 'Rua Mouzinho da Silveira', 947321876, 17),
(18, 110, 'Bruno Costa', '1990-12-01', 'Rua das Taipas', 967898765, 18),
(19, 110, 'Helena Ribeiro', '1988-05-22', 'Praça dos Leões', 976543210, 19),
(20, 201, 'Tiago Mendes', '2000-08-15', 'Rua do Campo Alegre', 956432198, 20),
(21, 201, 'Vera Lopes', '1991-02-12', 'Rua de Cedofeita', 986541230, 21),
(22, 202, 'Manuel Rocha', '1989-06-19', 'Largo da Sé', 946732198, 22);


INSERT INTO RESERVA (id_reserva, checkout, checkin, preço, id_tipo_de_reserva)
VALUES
(1, '2023-06-20 12:00:00', '2023-06-15 14:00:00', 250, 1),
(2, '2023-08-15 11:00:00', '2023-08-10 16:00:00', 700, 2),
(3, '2023-09-25 10:00:00', '2023-09-20 15:00:00', 400, 2),
(4, '2023-07-30 14:00:00', '2023-07-25 18:00:00', 930, 2),
(5, '2023-10-10 09:00:00', '2023-10-05 12:00:00', 220, 1),
(6, '2023-11-01 12:00:00', '2023-10-28 16:00:00', 660, 1),
(7, '2023-12-05 10:00:00', '2023-12-01 15:00:00', 220, 1),
(8, '2023-12-20 11:00:00', '2023-12-15 14:00:00', 710, 2),
(9, '2024-01-15 12:00:00', '2024-01-10 13:00:00', 150, 1),
(10, '2024-02-20 09:00:00', '2024-02-15 16:00:00', 250, 1),
(11, '2024-03-25 12:00:00', '2024-03-20 15:00:00', 3300, 1),
(12, '2024-04-10 11:00:00', '2024-04-05 10:00:00', 150, 1);



INSERT INTO HÓSPEDE_RESERVA (id_hóspede, id_reserva)
VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 4),
(6, 4),
(7, 4),
(8, 5),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 7),
(14, 8),
(15, 8),
(16, 8),
(17, 9),
(18, 10),
(19, 10),
(20, 11),
(21, 11),
(22, 12);


INSERT INTO RESERVA_QUARTO (id_reserva, nº_quarto)
VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107),
(8, 108),
(9, 109),
(10, 110),
(11, 201),
(12, 202);



INSERT INTO PAGAMENTO (id_pagamento, NIF, forma_pagamento, id_reserva)
VALUES
(1, 123456789, 'Cartão de Crédito', 1),  
(2, 234567890, 'Dinheiro', 2),           
(3, 345678901, 'Transferência Bancária', 3),  
(4, 456789012, 'Cartão de Crédito', 4),  
(5, 567890123, 'Cartão de Crédito', 5),
(6, 678901234, 'Dinheiro', 6),         
(7, 789012345, 'Transferência Bancária', 7),  
(8, 890123456, 'Cartão de Crédito', 8),  
(9, 901234567, 'Dinheiro', 9),           
(10, 123456789, 'Transferência Bancária', 10),
(11, 223678865, 'Dinheiro', 11),
(12, 117655439, 'Dinheiro', 12);


INSERT INTO BEBIDA (id_bebida, nome_bebida, id_tipo_de_reserva)
VALUES
(1,'Neve Azul',1),
(2,'Ginger Dream',1),
(3,'Citrus Storm',1),
(4,'Brisa das Caraíbas',1),
(5,'Festa de Morango',1),
(6,'Chá do Amanhecer',1),
(7,'Laranja Dourada',1),
(8,'Vento de Menta',1),
(9,'Gin Tónico',1),
(10,'Sombra de Limão',1);


INSERT INTO REFEIÇÃO (id_refeições, nome_refeição, id_tipo_de_reserva)
VALUES
(1, 'Almoço Executivo', 1),
(2, 'Jantar Romântico', 1),
(3, 'Café de Luxo', 1),
(4, 'Almoço dos Negócios', 1),
(5, 'Jantar Gourmet', 1),
(6, 'Almoço Familiar', 1),
(7, 'Café Especial', 1),
(8, 'Brunch de Domingo', 1),
(9, 'Ovos à Porto',1),
(10, 'Polvo da Maré',1);