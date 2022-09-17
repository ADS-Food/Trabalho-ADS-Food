CREATE TABLE `Pessoa` (
	`idPessoa` INT NOT NULL AUTO_INCREMENT,
	`CPF` INT NOT NULL,
	`nome` VARCHAR(255) NOT NULL,
	`endereço` VARCHAR(255) NOT NULL,
	`funcionário` BOOLEAN NOT NULL,
	`totalPontos` INT NOT NULL,
	PRIMARY KEY (`idPessoa`)
);

CREATE TABLE `Produto` (
	`idProduto` INT NOT NULL AUTO_INCREMENT,
	`nomeProduto` VARCHAR(255) NOT NULL,
	`pontos` INT,
	`quantidade` INT NOT NULL,
	PRIMARY KEY (`idProduto`)
);

CREATE TABLE `Venda` (
	`idVenda` BINARY NOT NULL AUTO_INCREMENT,
	`codPessoa` INT NOT NULL,
	`codVendedor` INT NOT NULL,
	`valorTotal` VARCHAR(255) NOT NULL,
	`Entrega` BOOLEAN NOT NULL,
	`codVendaDetalhe` INT NOT NULL,
	PRIMARY KEY (`idVenda`)
);

CREATE TABLE `VendaDetalhe` (
	`idVendaDetalhe` INT NOT NULL AUTO_INCREMENT,
	`codProduto` INT NOT NULL,
	`valorUnitario` FLOAT NOT NULL,
	PRIMARY KEY (`idVendaDetalhe`)
);

CREATE TABLE `RelProdutoIngrediente` (
	`idRelProdIng` INT NOT NULL AUTO_INCREMENT,
	`codProduto` INT NOT NULL,
	`codIngrediente` INT NOT NULL,
	PRIMARY KEY (`idRelProdIng`)
);

CREATE TABLE `Ingrediente` (
	`idIngrediente` INT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(255) NOT NULL,
	`quantidade` FLOAT NOT NULL,
	PRIMARY KEY (`idIngrediente`)
);

CREATE TABLE `ControleEstoque` (
	`idControleEstoque` INT NOT NULL AUTO_INCREMENT,
	`codIngrediente` INT NOT NULL AUTO_INCREMENT,
	`entrada` BOOLEAN NOT NULL,
	`quantidade` FLOAT NOT NULL,
	`descricao` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`idControleEstoque`)
);

CREATE TABLE `Feedback` (
	`idFeedback` INT NOT NULL AUTO_INCREMENT,
	`codPessoa` INT NOT NULL,
	`nota` FLOAT NOT NULL,
	`empresaCnpj` INT NOT NULL,
	`data` DATETIME NOT NULL,
	PRIMARY KEY (`idFeedback`)
);

ALTER TABLE `Venda` ADD CONSTRAINT `Venda_fk0` FOREIGN KEY (`codPessoa`) REFERENCES `Pessoa`(`idPessoa`);

ALTER TABLE `Venda` ADD CONSTRAINT `Venda_fk1` FOREIGN KEY (`codVendedor`) REFERENCES `Pessoa`(`funcionário`);

ALTER TABLE `Venda` ADD CONSTRAINT `Venda_fk2` FOREIGN KEY (`codVendaDetalhe`) REFERENCES `VendaDetalhe`(`idVendaDetalhe`);

ALTER TABLE `VendaDetalhe` ADD CONSTRAINT `VendaDetalhe_fk0` FOREIGN KEY (`codProduto`) REFERENCES `Produto`(`idProduto`);

ALTER TABLE `RelProdutoIngrediente` ADD CONSTRAINT `RelProdutoIngrediente_fk0` FOREIGN KEY (`codProduto`) REFERENCES `Produto`(`idProduto`);

ALTER TABLE `RelProdutoIngrediente` ADD CONSTRAINT `RelProdutoIngrediente_fk1` FOREIGN KEY (`codIngrediente`) REFERENCES `Ingrediente`(`idIngrediente`);

ALTER TABLE `ControleEstoque` ADD CONSTRAINT `ControleEstoque_fk0` FOREIGN KEY (`codIngrediente`) REFERENCES `Ingrediente`(`idIngrediente`);

ALTER TABLE `Feedback` ADD CONSTRAINT `Feedback_fk0` FOREIGN KEY (`codPessoa`) REFERENCES `Pessoa`(`idPessoa`);









