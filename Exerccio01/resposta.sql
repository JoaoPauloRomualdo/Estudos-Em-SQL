-- Exercicio 01
    SELECT valor, observacao FROM compras WHERE data >= "2012/12/15";

--Exercicio 02
    SELECT * FROM compras WHERE valor > 1000 AND valor < 5000;

--Exercicio 04
    SELECT * FROM compras WHERE data >="2010/12/15" AND 
        data <= "2014/12/15";

--Exercicio 05
    SELECT * FROM compras WHERE observacao LIKE "Lanchonete%"
        AND >= 15 AND valor <= 35;

--Exercicio 06
    SELECT * FROM compras WHERE recebida= 1;

--Exercicio 07
    SELECT * FROM compras WHERE recebida= 0;
