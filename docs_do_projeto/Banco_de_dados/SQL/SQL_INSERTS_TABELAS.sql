-- 05061048
INSERT INTO `biblioteca`.`localizacao` (`id_localizacao`, `estante`, `prateleira`) VALUES
(1, 'A1', 'P1'),
(2, 'A1', 'P2'),
(3, 'A1', 'P3'),
(4, 'A2', 'P1'),
(5, 'A2', 'P2'),
(6, 'A2', 'P3'),
(7, 'B1', 'P1'),
(8, 'B1', 'P2'),
(9, 'B1', 'P3'),
(10, 'B2', 'P1'),
(11, 'B2', 'P2'),
(12, 'B2', 'P3'),
(13, 'C1', 'P1'),
(14, 'C1', 'P2'),
(15, 'C1', 'P3');

INSERT INTO `biblioteca`.`livro`
(`ISBN`, `autor`, `edicao`, `ano`, `genero`, `exemplar`, `disponibilidade`, `localizacao_id_localizacao`)
VALUES
('9780000000001', 'J.R.R. Tolkien', 1, 1937, 'Fantasia', 'O Hobbit - Exemplar 1', 'S', 1),
('9780000000002', 'George Orwell', 1, 1949, 'Distopia', '1984 - Exemplar 1', 'S', 2),
('9780000000003', 'Machado de Assis', 2, 1899, 'Romance', 'Dom Casmurro - Exemplar 1', 'S', 3),
('9780000000004', 'Jane Austen', 3, 1813, 'Romance', 'Orgulho e Preconceito - Exemplar 1', 'S', 4),
('9780000000005', 'George Orwell', 1, 1945, 'Satírico', 'A Revolução dos Bichos - Exemplar 1', 'S', 5),
('9780000000006', 'Jorge Amado', 1, 1937, 'Literatura Brasileira', 'Capitães da Areia - Exemplar 1', 'S', 6),
('9780000000007', 'Antoine de Saint-Exupéry', 1, 1943, 'Infantil', 'O Pequeno Príncipe - Exemplar 1', 'S', 7),
('9780000000008', 'João Guimarães Rosa', 1, 1956, 'Literatura Brasileira', 'Grande Sertão: Veredas - Exemplar 1', 'S', 8),
('9780000000009', 'J.K. Rowling', 1, 1997, 'Fantasia', 'Harry Potter e a Pedra Filosofal - Exemplar 1', 'S', 9),
('9780000000010', 'J.R.R. Tolkien', 2, 1954, 'Fantasia', 'O Senhor dos Anéis - Exemplar 1', 'S', 10),
('9780000000011', 'Gabriel García Márquez', 1, 1967, 'Realismo Mágico', 'Cem Anos de Solidão - Exemplar 1', 'S', 11),
('9780000000012', 'Franz Kafka', 1, 1915, 'Existencialismo', 'A Metamorfose - Exemplar 1', 'S', 12),
('9780000000013', 'José Saramago', 1, 1995, 'Ficção', 'Ensaio Sobre a Cegueira - Exemplar 1', 'S', 13),
('9780000000014', 'Umberto Eco', 1, 1980, 'Mistério', 'O Nome da Rosa - Exemplar 1', 'S', 14),
('9780000000015', 'Machado de Assis', 1, 1881, 'Romance', 'Memórias Póstumas de Brás Cubas - Exemplar 1', 'S', 15);
--202506051211
INSERT INTO `biblioteca`.`cliente` (`nome`, `data_nasc`, `cpf`, `sexo`, `endereco`, `fone`) VALUES
('Gregory Reduzino', '1990-05-15', '12345678901', 'M', 'Rua das Flores, 123', '(11) 98765-4321'),
('Guilbert Reduzino', '1985-08-22', '23456789012', 'F', 'Av. Paulista, 1000', '(11) 91234-5678'),
('Isaac Costa', '1995-03-10', '34567890123', 'M', 'Rua XV de Novembro, 50', '(11) 92345-6789'),
('Daniel Magalhaes ', '1988-11-30', '45678901234', 'F', 'Alameda Santos, 200', '(11) 93456-7890'),
('Luiz Melo', '1992-07-18', '56789012345', 'M', 'Rua Augusta, 300', '(11) 94567-8901'),
('Sonia Xavier', '1993-09-25', '67890123456', 'F', 'Rua Consolação, 400', '(11) 95678-9012'),
('Ricardo Almeida', '1987-04-12', '78901234567', 'M', 'Av. Brigadeiro Faria Lima, 500', '(11) 96789-0123'),
('Fernanda Lima', '1991-12-05', '89012345678', 'F', 'Rua Oscar Freire, 600', '(11) 97890-1234'),
('Marcos Rocha', '1989-06-20', '90123456789', 'M', 'Rua Haddock Lobo, 700', '(11) 98901-2345'),
('Juliana Pereira', '1994-02-14', '01234567890', 'F', 'Av. Rebouças, 800', '(11) 99012-3456'),
('Lucas Gonçalves', '1996-10-08', '11223344556', 'M', 'Rua Bela Cintra, 900', '(11) 99123-4567'),
('Patrícia Nunes', '1986-07-30', '22334455667', 'F', 'Rua da Glória, 1000', '(11) 99234-5678'),
('Gustavo Martins', '1997-01-18', '33445566778', 'M', 'Rua Vergueiro, 1100', '(11) 99345-6789'),
('Camila Ribeiro', '1998-05-22', '44556677889', 'F', 'Av. Angélica, 1200', '(11) 99456-7890'),
('Roberto Carvalho', '1984-03-07', '55667788990', 'M', 'Rua Maria Antônia, 1300', '(11) 99567-8901');

INSERT INTO `biblioteca`.`emprestimo` (`id_cliente`, `id_livro`, `data_emprestimo`, `data_devolucao`) VALUES
(1, 3, '2025-06-01', '2025-06-08'),
(2, 5, '2025-06-03', NULL),
(3, 7, '2025-05-25', '2025-06-01'),
(1, 1, '2025-05-20', '2025-05-30'),
(4, 2, '2025-06-04', NULL),
(5, 9, '2025-05-15', '2025-05-22'),
(2, 11, '2025-06-01', NULL);

INSERT INTO `biblioteca`.`multa` (`id_cliente`, `descricao`, `valor`) VALUES
(1, 'Atraso na devolução do livro "Dom Casmurro"', 5.00),
(2, 'Dano físico ao exemplar de "A Revolução dos Bichos"', 12.50),
(3, 'Perda do livro "O Pequeno Príncipe"', 35.00),
(5, 'Atraso na devolução de "Harry Potter e a Pedra Filosofal"', 7.00);
