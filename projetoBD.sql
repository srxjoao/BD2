DROP TABLE IF EXISTS projeto_bancodedados;

CREATE TABLE projeto_bancodedados (
    id INT PRIMARY KEY,
    Nome CHAR(255) NOT NULL,
    Cpf CHAR(11) NOT NULL,
    Ra CHAR(7) NOT NULL,
    DataNascimento DATE, 
    Sexo CHAR(15),
    Cidade CHAR(255),
    Estado CHAR(2)
);

INSERT INTO projeto_bancodedados (id, Nome, Cpf, Ra, DataNascimento, Sexo, Cidade, Estado) VALUES
(1, 'Ana Clara Silva', '12345678901', '1000001', '2001-05-14', 'Feminino', 'São Paulo', 'SP'),
(2, 'Lucas Oliveira Santos', '23456789012', '1000002', '2000-08-23', 'Masculino', 'Rio de Janeiro', 'RJ'),
(3, 'Maria Fernanda Costa', '34567890123', '1000003', '1999-12-30', 'Feminino', 'Belo Horizonte', 'MG'),
(4, 'João Pedro Oliveira', '45678901234', '1000004', '2002-03-15', 'Masculino', 'Curitiba', 'PR'),
(5, 'Isabella Lima', '56789012345', '1000005', '2003-07-22', 'Feminino', 'Porto Alegre', 'RS'),
(6, 'Felipe Rodrigues', '67890123456', '1000006', '1998-11-05', 'Masculino', 'Salvador', 'BA'),
(7, 'Gabriela Martins', '78901234567', '1000007', '2004-01-11', 'Feminino', 'Florianópolis', 'SC'),
(8, 'Thiago Pereira', '89012345678', '1000008', '2001-09-20', 'Masculino', 'Fortaleza', 'CE'),
(9, 'Luiza Souza', '90123456789', '1000009', '1997-04-12', 'Feminino', 'Manaus', 'AM'),
(10, 'Rafael Ferreira', '01234567890', '1000010', '2002-06-18', 'Masculino', 'Recife', 'PE'),
(11,'Silvério Souza','11720413185','100011','1990-06-15', 'Maculino','Ouro Preto','MG');

SELECT id, Nome, Cpf, Ra, Sexo, Cidade, Estado, to_char(DataNascimento, 'dd/mm/yyyy') as DataNascimento
FROM projeto_bancodedados;
