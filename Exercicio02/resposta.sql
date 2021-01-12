-- Altere as compras, colocando a observação 'preparando o natal' para todas as que foram efetuadas no dia 20/12/2014.

    SELECT observacoes FROM compras WHERE data = '2014-12-20';

    UPDATE compras SET observacoes = "Compras para o natal " WHERE id = 31;

-- Altere o VALOR das compras feitas antes de 01/06/2013. Some R$10,00 ao valor atual

    SELECT id,valor,data FROM compras WHERE data BETWEEN '2013-05-01' AND '2013-05-31';

    UPDATE compras SET valor = valor + 10.00 WHERE id = 10;

-- Atualize todas as compras feitas entre 01/07/2013 e 01/07/2014 para que elas tenham a observação 'entregue antes de 2014' e a coluna recebida com o valor TRUE.

    SELECT id,data,recebida FROM compras WHERE data BETWEEN '2013-07-01' AND '2014-07-01';

    UPDATE compras SET observacoes = 'entregue antes de 2014', recebida = TRUE WHERE data BETWEEN '2013-07-01' AND '2014-07-01';

-- Exclua as compras realizadas entre 05 e 20 março de 2013.

    SELECT id, data FROM compras WHERE data BETWEEN '2013-03-05' AND '2013-03-20';

    DELETE FROM compras WHERE data BETWEEN '2013-03-05' AND '2013-03-20';

-- Existe um operador lógico chamado NOT . Esse operador pode ser usado para negar  qualquer condição. Por exemplo, para selecionar qualquer registro com data diferente de 03/11/2014, pode ser construído o seguinte WHERE : WHERE NOT DATA = '2011-11-03' Use o operador NOT e monte um SELECT que retorna todas as compras com valor diferente de R$ 108,00.

    SELECT * FROM compras WHERE NOT valor <> 108.00;