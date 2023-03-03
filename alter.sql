SELECT * FROM produtos;

UPDATE produtos SET PRECO_LISTA = 5 WHERE CODIGO = '1000889';

UPDATE produtos SET EMBALAGEM = 'PET', TAMANHO = '1 Litro', DESCRITOR =

'Sabor da Montanha - 1 Litro - Uva' WHERE CODIGO = '1000889';

UPDATE produtos SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'Maracujá';

UPDATE VENDEDORES A INNER JOIN SUCOS_VENDAS.TABELA_DE_VENDEDORES B

ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)

SET A.FERIAS = B.DE_FERIAS;

INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)

     VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),

         ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),

         ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),

         ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),

         ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),

         ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),

         ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),

         ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),

         ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),

         ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),

         ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),

         ('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);

DELETE FROM PRODUTOS WHERE CODIGO = '1001000';

DELETE FROM PRODUTOS WHERE TAMANHO = '1 Litro' AND SUBSTRING(DESCRITOR,1,15) = 'Sabor dos Alpes';

DELETE FROM PRODUTOS WHERE CODIGO NOT IN ( SELECT CODIGO_DO_PRODUTO FROM SUCOS_VENDAS.TABELA_DE_PRODUTOS);

CREATE TABLE `produtos2` (

  `CODIGO` varchar(10) NOT NULL,

  `DESCRITOR` varchar(100) DEFAULT NULL,

  `SABOR` varchar(50) DEFAULT NULL,

  `TAMANHO` varchar(50) DEFAULT NULL,

  `EMBALAGEM` varchar(50) DEFAULT NULL,

  `PRECO_LISTA` float DEFAULT NULL,

  PRIMARY KEY (`CODIGO`)

) ;

INSERT INTO produtos2 SELECT * FROM produtos;

UPDATE produtos2 SET preco_lista = 8;

DELETE FROM produtos2;

START TRANSACTION;

SELECT * FROM VENDEDORES;

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;


SELECT * FROM VENDEDORES;

ROLLBACK;

SELECT * FROM VENDEDORES;

START TRANSACTION;

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

SELECT * FROM VENDEDORES;

COMMIT;

SELECT * FROM VENDEDORES;
