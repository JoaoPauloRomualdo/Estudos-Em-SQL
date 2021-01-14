--Configure o valor padrão para a coluna recebida
    ALTER TABLE compras MODIFY COLUMN recebida TINYINT(1) DEFAULT 0;

--Configure a coluna observacoes para não aceitar valores nulos
    ALTER TABLE compras MODIFY COLUMN observacoes VARCHAR(255) NOT NULL;

--NOT NULL e DEFAULT podem ser usados também no CREATE TABLE ? Crie uma tabela nova e adicione Constraints e valores DAFAULT 
    CREATE TABLE tabela_teste (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(45) NOT NULL,
        email VARCHAR(50) NOT NULL  DEFAULT 'Email nao informado',
        telefone VARCHAR(20) NOT NULL
    );

-- Reescreva o CREATE TABLE do começo do curso, marcando observacoes como nulo e valor padrão do recebida como 1
    CREATE TABLE compras (
        id INT AUTO_INCREMENT PRIMARY KEY,
        valor DECIMAL(18,3),
        data DATE,
        observacoes VARCHAR(255) NOT NULL,
        recebida TINYINT(1) DEFAULT 1
    )