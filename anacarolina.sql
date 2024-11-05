CREATE TABLE hospedes(
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL
);

SELECT * FROM hospedes;

CREATE TABLE quartos(
    id_quarto SERIAL PRIMARY KEY,
    numero INT NOT NULL,
    andar INT NOT NULL
);

SELECT * FROM quartos;

CREATE TABLE reservas(
    id_reserva SERIAL PRIMARY KEY,
    id_hospede INT NOT NULL,
    id_quarto INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_termino DATE NOT NULL,
    CONSTRAINT fk_hospede FOREIGN KEY (id_hospede)
    REFERENCES hospedes(id_hospede),
    CONSTRAINT fk_quarto FOREIGN KEY (id_quarto)
    REFERENCES quartos(id_quarto)
);

SELECT * FROM reservas;

INSERT INTO hospedes(nome, email, telefone, cpf) VALUES
('Ana Carolina', 'anacarolina@gmail.com', '98806-6268', '123.456.789-00'),
('Alejandra', 'alejandra@gmail.com', '83378-8383', '001.234.567-89'),
('Bruna', 'bruna@gmail.com', '12345-1234', '900.123.456-78'),
('Evelyn', 'evelyn@gmail.com', '98765-9876', '890.012.345-67'),
('Laura', 'laura@gmail.com', '12345-6789', '789.001.234-56');

INSERT INTO quartos(numero, andar) VALUES
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(6,3),
(7,3),
(8,3),
(9,4),
(10,4),
(11,4),
(12,4);

INSERT INTO reservas (id_hospede, id_quarto, data_inicio, data_termino) VALUES
(1, 10, '2024-01-01', '2024-01-10'),
(2, 12, '2024-05-25', '2024-06-01'),
(3, 7, '2024-01-15', '2024-02-05'),
(4, 9, '2024-11-01', '2024-11-20'),
(5, 2, '2024-10-29', '2024-11-20');


