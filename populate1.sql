PRAGMA foreign_keys=ON;

INSERT INTO TIPO_DE_QUARTO (id_tipo_de_quarto, nome, capacidade_max)
VALUES
(1,'Simples',1),
(2,'Duplo',2),
(3,'Suite',3);


INSERT INTO TIPO_DE_RESERVA(id_tipo_de_reserva,nome_tipo_de_reserva)
VALUES
(1,'VIP'),
(2,'Normal');


INSERT INTO FIDELIDADE1(const_estadia,descontos)
VALUES
(5,5), --5 estadias para ter 5%
(10,10), --10 estadias para ter 10%
(15,15),
(20,20),
(25,25); --25 estadias para têr 25%

INSERT INTO FIDELIDADE2(id_fidelidade,const_estadia,data_adesão)
VALUES
(1,5,'1990-4-5'),
(2,10,'1987-6-16'),
(3,15,'1999-7-12'),
(4,20,'1998-12-5'),
(5,25,'2023-4-13'),
(6,5,'2004-9-5'),
(7,10,'2000-4-13'),
(8,5,'2010-5-13'),
(9,25,'2016-11-5'),
(10,5,'2021-10-9');


INSERT INTO QUARTO(nº_quarto,estado, id_tipo_de_quarto)
VALUES
(101,'Ocupado',1),
(102,'Ocupado',2),
(103,'Ocupado',1),
(104,'Ocupado',3),
(105,'Ocupado',1),
(106,'Ocupado',2),
(107,'Ocupado',1),
(108,'Ocupado',3),
(109,'Ocupado',1),
(110,'Ocupado',2),
(201,'Livre',2),
(202,'Livre',1),
(203,'Livre',2),
(204,'Livre',1),
(205,'Livre',2),
(206,'Livre',3),
(207,'Livre',3),
(208,'Livre',1),
(209,'Livre',1),
(210,'Livre',2);


INSERT INTO COMODIDADE(id_comodidade,nome,lotação_max,nº_funcionários)
VALUES
(1,'Piscina Interior',40,5),
(2,'Ginásio',30,7),
(3,'Sauna',8,3),
(4,'Spa e Massagem',15,9),
(5,'Sala de Jogos',21,10),
(6,'Parque Infantil',15,5),
(7,'Campo de Ténis',4,2),
(8,'Campo de Golfe',10,10),
(9,'Restaurante Gourmet',45,20),
(10,'Bar de Cocktails',10,5),
(11,'Sala de Conferências',8,2),
(12,'Centro de Negócios',10,3),
(13,'Cinema Privado',40,8),
(14,'Lounge Executivo',20,5),
(15,'Jacuzzi Exterior',5,2),
(16,'Sala de Yoga',15,3),
(17,'Salão de Festas',30,10),
(18,'Sala de Música',10,3),
(19,'Biblioteca',46,10),
(20,'Zona de Relaxamento ao ar livre',35,15);

INSERT INTO FUNCIONÁRIO(id_funcionário,salário,nome,data_nascimento,morada,telefone)
VALUES
(1, 1200, 'Carlos Silva', '1985-03-12', 'Rua Principal', 912345678),
(2, 1500, 'Ana Santos', '1990-06-25', 'Avenida Central', 923456789),
(3, 1800, 'João Costa', '1978-11-03', 'Travessa das Flores', 934567890),
(4, 1250, 'Maria Oliveira', '1988-04-17', 'Praça da Liberdade', 945678901),
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
(20, 1150, 'Diogo Figueiredo', '1986-01-09', 'Estrada Nacional', 991234567);




INSERT INTO HÓSPEDE(id_hóspede,nº_quarto,nome,data_nascimento,morada,telefone,id_fidelidade)
VALUES 
(1,101,'João Gonçalves','1990-5-14','Rua das Flores',912345678,1),
(2,102,'Maria José','1990-6-16', 'Rua da Liberdade',923454267,2),
(3,103,'André Lourenço','2000-8-20','Bairro dos Leões',976486463,3),
(4,104,'João Sousa','2000-10-5','Rua dos Pássaros',987654087,4),
(5,105,'Gustavo Silva','2005-11-18','Rua do Gato',976543860,5),
(6,106,'José Peixoto','2004-12-4','Praça da Amizade',941236060,6),
(7,107,'António Santos','2001-5-25','Avenida da Boavista',987123098,7),
(8,108,'Lourenço Oliveira','1975-6-21','Praça do Jardim',954367901,8),
(9,109,'Marco Lopes','1977-1-21','Rua do Cão ',998765432,9),
(10,110,'Marisa Rocha','1989-9-25','Largo do Jardim',964906123,10);



INSERT INTO FUNCIONÁRIO_COMODIDADE(id_funcionário,id_comodidade)
VALUES
(1,1), --funcionário 1 na comodidade 1
(2,2), --funcionário 2 na comodidade 2
(3,3), --funcionário 3 na comodidade 3
(4,4), --...
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);


INSERT INTO RESERVA(id_reserva,checkout,checkin,preço,id_tipo_de_reserva)
VALUES
(1, '2024-12-05 15:00:00', '2024-12-01 11:00:00', 500, 1),  -- Hóspede 1
(2, '2024-12-06 14:00:00', '2024-12-02 10:00:00', 450, 2),  -- Hóspede 2
(3, '2024-12-07 16:00:00', '2024-12-03 12:00:00', 550, 1),  -- Hóspede 3
(4, '2024-12-08 18:00:00', '2024-12-04 09:00:00', 400, 2),  -- Hóspede 4
(5, '2024-12-09 15:00:00', '2024-12-05 11:00:00', 645, 1),  -- Hóspede 5
(6, '2024-12-10 14:00:00', '2024-12-06 10:00:00', 350, 2),  -- Hóspede 6
(7, '2024-12-11 17:00:00', '2024-12-07 12:00:00', 450, 1),  -- Hóspede 7
(8, '2024-12-12 16:00:00', '2024-12-08 10:00:00', 475, 2),  -- Hóspede 8
(9, '2024-12-13 15:00:00', '2024-12-09 11:00:00', 530, 1),  -- Hóspede 9
(10, '2024-12-14 14:00:00', '2024-12-110 09:00:00', 769, 2);  -- Hóspede 10


INSERT INTO HÓSPEDE_RESERVA(id_hóspede,id_reserva)
VALUES
(1,1), --hóspede 1 com reserva 1
(2,2), --hóspede 2 com reserva 2
(3,3), --hóspede 3 com reserva 3
(4,4), --hóspede 4 com reserva 4
(5,5), --hóspede 5 com reserva 5
(6,6),  --hóspede 6 com reserva 6
(7,7), --hóspede 7 com reserva 7
(8,8), --hóspede 8 com reserva 8
(9,9), --hóspede 9 com reserva 9
(10,10); --hóspede 10 com reserva 10


INSERT INTO RESERVA_QUARTO(id_reserva,nº_quarto)
VALUES
(1,101),
(2,102),
(3,103),
(4,104),
(5,105),
(6,106),
(7,107),
(8,108),
(9,109),
(10,110);


INSERT INTO PAGAMENTO(id_pagamento,NIF,forma_pagamento,id_reserva)
VALUES
(1, 123456789, 'Cartão de Crédito', 1),  -- Pagamento da reserva 1 (Hóspede 1)
(2, 234567890, 'Dinheiro', 2),           -- Pagamento da reserva 2 (Hóspede 2)
(3, 345678901, 'Transferência Bancária', 3),  -- Pagamento da reserva 3 (Hóspede 3)
(4, 456789012, 'Cartão de Crédito', 4),  -- Pagamento da reserva 4 (Hóspede 4)
(5, 567890123, 'Cartão de Crédito', 5),  -- Pagamento da reserva 5 (Hóspede 5)
(6, 678901234, 'Dinheiro', 6),          -- ...
(7, 789012345, 'Transferência Bancária', 7),  
(8, 890123456, 'Cartão de Crédito', 8),  
(9, 901234567, 'Dinheiro', 9),           
(10, 123456789, 'Transferência Bancária', 10); 

INSERT INTO BEBIDA(id_bebida,nome_bebida,id_tipo_de_reserva)
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



INSERT INTO REFEIÇÃO(id_refeições,nome_refeição,id_tipo_de_reserva)
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




