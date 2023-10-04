-- Criação das tabelas
CREATE TABLE emagrecer (
    Opção integer,
    Refeição varchar(20),
    Alimentos text
);

CREATE TABLE ganho_massa (
    Opção integer,
    Refeição varchar(20),
    Alimentos text
);

CREATE TABLE saudavel (
    Opção integer,
    Refeição varchar(20),
    Alimentos text
);

-- Inserção de dados na tabela emagrecer
INSERT INTO emagrecer (Opção, Refeição, Alimentos)
VALUES
    (1, 'Café da manhã', '2 ovos mexidos com espinafre e 1 tomate, 1 fatia de pão integral.'),
    (1, 'Lanche da manhã', 'Iogurte grego sem açúcar com 5 morangos.'),
    (1, 'Almoço', '100g Peito de frango grelhado, salada de folhas verdes e quinoa'),
    (1, 'Lanche tarde', 'Omelete de claras de 1 ovo com espinafre e cogumelos'),
    (1, 'Janta', '100g Peixe grelhado com 150g de aspargos e quinoa'),
    (1, 'Ceia', 'Chá de camomila ou menta');

-- Inserção de dados na tabela ganho_massa
INSERT INTO ganho_massa (Opção, Refeição, Alimentos)
VALUES
    (2, 'Café da manhã', 'Omelete com 3 ovos inteiros com 70g de queijo, 70g espinafre e 1/2 abacate'),
    (2, 'Lanche da manhã', 'Shake de proteína com 200ml leite, 1 banana e 50g manteiga de amendoim.'),
    (2, 'Almoço', '150g Peito de frango grelhado com 100g batata doce e brócolis'),
    (2, 'Lanche tarde', 'Iogurte grego.'),
    (2, 'Janta', '150g Bife magro com vegetais salteados e 150g arroz integral'),
    (2, 'Ceia', 'shake de proteína');

-- Inserção de dados na tabela saudavel
INSERT INTO saudavel (Opção, Refeição, Alimentos)
VALUES
    (3, 'Café da manhã', '50g Aveia com proteína em pó e 1 banana'),
    (3, 'Lanche da manhã', '50g Aveia com proteína em pó e 1 banana'),
    (3, 'Almoço', '150g de Salmão assado com quinoa e espargos'),
    (3, 'Lanche tarde', 'Sanduíche: duas fatias de peito de peru com 1/2 abacate em 2 fatias de pão integral'),
    (3, 'Janta', '100g Peito de frango com couve-flor e quinoa'),
    (3, 'Ceia', 'Queijo cottage com 1 fatia de pão integral');
	
SELECT * FROM emagrecer;
SELECT * FROM ganho_massa;
SELECT * FROM saudavel;
