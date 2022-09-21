CREATE DATABASE  IF NOT EXISTS `adsfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `adsfood`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: adsfood
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `idBAIRRO` int NOT NULL AUTO_INCREMENT,
  `bairroNOME` varchar(255) DEFAULT NULL,
  `CODCIDADE` int DEFAULT NULL,
  PRIMARY KEY (`idBAIRRO`),
  KEY `FK_CIDADE_idx` (`CODCIDADE`),
  CONSTRAINT `FK_CIDADE` FOREIGN KEY (`CODCIDADE`) REFERENCES `cidade` (`idCIDADE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'São Jose',7),(2,'Primavera',12),(3,'Vila Osorio',14),(4,'Tamandare',13),(5,'Vila Nova',5),(6,'Fraron',4),(7,'Mundo Novo',3),(8,'Mosungue',2),(9,'Vila Portes',1),(10,'Vila Rica',6),(11,'Flores',9),(12,'Vila Rica',8),(13,'Batel',10),(14,'Portal',11),(15,'Jardim Europa',15);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCIDADE` int NOT NULL AUTO_INCREMENT,
  `cidadeNOME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCIDADE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Cascavel'),(2,'Foz do Iguaçu'),(3,'Francisco Beltrão'),(4,'Pato Branco'),(5,'Toledo'),(6,'Palotina'),(7,'Guarapuava'),(8,'Prudentopolis'),(9,'Curitiba'),(10,'Londrina'),(11,'Maringa'),(12,'Umuarana'),(13,'Ponta Grossa'),(14,'Castro'),(15,'Carambei');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controleestoque`
--

DROP TABLE IF EXISTS `controleestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controleestoque` (
  `idCONTROLEESTOQUE` int NOT NULL AUTO_INCREMENT,
  `itemNOME` varchar(255) DEFAULT NULL,
  `qtdESTOQUE` float DEFAULT NULL,
  `descricaoESTOQUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCONTROLEESTOQUE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controleestoque`
--

LOCK TABLES `controleestoque` WRITE;
/*!40000 ALTER TABLE `controleestoque` DISABLE KEYS */;
INSERT INTO `controleestoque` VALUES (1,'Pão',100,'Pão de X - Unidade'),(2,'Tomate',345,'Tomate Organico em Kg'),(3,'Alfaces',200,'Alface Organica em Kg'),(4,'Maionese',90,'Galão 3Kg'),(5,'Katchup',90,'Galão 3Kg'),(6,'Batatas',100,'Batata organica em Kg'),(7,'Carne Moida',7,'Saco de 200 Kg'),(8,'Farinha',8,'Saco de 200 Kg'),(9,'Sorvete',13,'balde com 300 quilos'),(10,'Cebolas',256,'Cebola Organica em Kg'),(11,'Queijo',78,'Mussarela'),(12,'Laranja',54,'Laranja Organica em Unidade'),(13,'Refrigerante',29,'Refrigerante Lata'),(14,'Carne de Frango',30,'Asinhas em quilo'),(15,'Oleo de Soja',45,'Embalagem 900ml');
/*!40000 ALTER TABLE `controleestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idENDERECO` int NOT NULL AUTO_INCREMENT,
  `enderecoCOMPLEMENTO` varchar(255) DEFAULT NULL,
  `enderecoNUMERO` int DEFAULT NULL,
  `CODRUA` int DEFAULT NULL,
  PRIMARY KEY (`idENDERECO`),
  KEY `FK_RUA_idx` (`CODRUA`),
  CONSTRAINT `FK_RUA` FOREIGN KEY (`CODRUA`) REFERENCES `rua` (`idRUA`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'casa fundos',92,7),(2,'predio',408,9),(3,'condominio',309,10),(4,'casa da frente',435,12),(5,'predio',86,14),(6,'casa fundos',417,11),(7,'casa frente',145,8),(8,'predio',74,6),(9,'casa fundos',121,4),(10,'predio',136,3),(11,'predio',138,2),(12,'condominio',203,1),(13,'casa fundos',124,5),(14,'casa frente',49,15),(15,'casa frente',12,13);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `idFEEDBACK` int NOT NULL AUTO_INCREMENT,
  `CODPESSOA` int DEFAULT NULL,
  `feedbackNOTA` float DEFAULT NULL,
  `feedbackCNPJ` varchar(255) DEFAULT NULL,
  `feedbackDATA` datetime DEFAULT NULL,
  `feedbackCHAVEAUTENTICACAO` int NOT NULL,
  PRIMARY KEY (`idFEEDBACK`),
  UNIQUE KEY `feedbackCHAVEAUTENTICACAO_UNIQUE` (`feedbackCHAVEAUTENTICACAO`),
  KEY `FK_PESSOAFEEDBACK_idx` (`CODPESSOA`),
  CONSTRAINT `FK_PESSOAFEEDBACK` FOREIGN KEY (`CODPESSOA`) REFERENCES `pessoa` (`idPESSOA`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,4,8,'23018153000161','2022-09-17 00:00:00',35),(2,5,7,'6726422000125','2022-09-16 00:00:00',43),(3,6,9,'54762374000173','2022-09-15 00:00:00',36),(4,9,9.2,'81270452000195','2022-09-14 00:00:00',78),(5,10,10,'66233388000189','2022-07-09 00:00:00',87),(6,12,6.2,'71612081000129','2022-08-09 00:00:00',23),(7,14,7.5,'44152531000175','2022-10-09 00:00:00',8),(8,11,8.2,'15388202000120','2022-06-09 00:00:00',12),(9,8,6.1,'64000184000172','2022-03-09 00:00:00',456),(10,7,5.9,'83641804000105','2022-05-09 00:00:00',154),(11,3,10,'71553264000110','2022-04-09 00:00:00',897),(12,2,8.9,'63113337000125','2022-02-09 00:00:00',345),(13,1,7.9,'20136263000130','2022-09-20 00:00:00',65),(14,13,9,'50522012000154','2022-09-19 00:00:00',92),(15,15,8,'14148244000120','2022-08-31 00:00:00',190);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacaoestoque`
--

DROP TABLE IF EXISTS `movimentacaoestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimentacaoestoque` (
  `idMOVIMENTACAOESTOQUE` int NOT NULL AUTO_INCREMENT,
  `CODCONTROLEESTOQUE` int DEFAULT NULL,
  `movimentacaoQTD` float DEFAULT NULL,
  `movimentacaoMOTIVO` varchar(255) DEFAULT NULL,
  `movimentacaoDATA` datetime DEFAULT NULL,
  PRIMARY KEY (`idMOVIMENTACAOESTOQUE`),
  KEY `FK_ESTOQUEMOVIMENTACAO_idx` (`CODCONTROLEESTOQUE`),
  CONSTRAINT `FK_ESTOQUEMOVIMENTACAO` FOREIGN KEY (`CODCONTROLEESTOQUE`) REFERENCES `controleestoque` (`idCONTROLEESTOQUE`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacaoestoque`
--

LOCK TABLES `movimentacaoestoque` WRITE;
/*!40000 ALTER TABLE `movimentacaoestoque` DISABLE KEYS */;
INSERT INTO `movimentacaoestoque` VALUES (16,7,-59,'Produtos identificados como risco de saude','2024-05-08 00:00:00'),(17,4,34,'Compra para reposição','2023-11-16 00:00:00'),(18,5,43,'Compra para reposição','2023-07-19 00:00:00'),(19,2,34,'Compra para reposição','2024-04-02 00:00:00'),(20,6,62,'Compra para reposição','2024-04-12 00:00:00'),(21,15,53,'Compra para reposição','2024-07-02 00:00:00'),(22,13,23,'Compra para reposição','2024-08-16 00:00:00'),(23,12,2,'Substituição de produto danificado','2024-08-17 00:00:00'),(24,3,4,'Substituição de produto danificado','2024-08-18 00:00:00'),(25,2,-20,'Descarte de produto vencido','2024-05-12 00:00:00'),(26,1,-6,'Retirada para preparo de alimentos','2024-10-24 00:00:00'),(27,14,-14,'Retirada para preparo de alimentos','2024-10-29 00:00:00'),(28,12,-5,'Retirada para preparo de alimentos','2024-11-09 00:00:00'),(29,11,-16,'Retirada para preparo de alimentos','2024-11-17 00:00:00'),(30,10,19,'Compra para reposição','2024-11-20 00:00:00');
/*!40000 ALTER TABLE `movimentacaoestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `idPESSOA` int NOT NULL AUTO_INCREMENT,
  `pessoaCPF` varchar(255) DEFAULT NULL,
  `pessoaNOME` varchar(255) DEFAULT NULL,
  `CODENDERECO` int DEFAULT NULL,
  `pessoaFUNCIONARIO` tinyint DEFAULT NULL,
  `pessoaPONTOS` int DEFAULT NULL,
  PRIMARY KEY (`idPESSOA`),
  KEY `FK_ENDERECO_idx` (`CODENDERECO`),
  CONSTRAINT `FK_ENDERECO` FOREIGN KEY (`CODENDERECO`) REFERENCES `endereco` (`idENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'56935136024','Jose da Rosa',1,0,34),(2,'16548350308','Mario Castro',4,0,45),(3,'75047702480','Fabio Alvarenga',5,0,45),(4,'42356283803','Henrique Ribeiro',11,0,43),(5,'73671667435','Guilherme Lasso',3,0,76),(6,'1476287194','Luis Pacheco',2,0,88),(7,'81638135800','Flavia Almeida',5,0,99),(8,'59423688993','Carlos Eduardo',3,1,75),(9,'20361936680','João Gomes',15,0,48),(10,'18731009905','Creuza Louro',6,0,54),(11,'27728484931','Miguel Dias',8,1,35),(12,'38641401539','Vera Lucia',7,0,95),(13,'56204578936','Beatriza Muniz',5,1,66),(14,'01362777307','Bernado Ramos',14,0,23),(15,'33156585955','Marcio Vieira',14,1,22);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idPRODUTO` int NOT NULL AUTO_INCREMENT,
  `produtoNOME` varchar(255) DEFAULT NULL,
  `produtoPONTOS` int DEFAULT NULL,
  PRIMARY KEY (`idPRODUTO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Hamburguer Simples',12),(2,'Hamburguer Grande',20),(3,'Batata Frita',6),(4,'Refrigerante',7),(5,'Nugguet',4),(6,'Sanduiche de Frango',9),(7,'Anel de Cebola',3),(8,'Asinha de Frango',4),(9,'Hamburguer Duplo',25),(10,'Milk Shake',10),(11,'Milk Shake Grande',12),(12,'Milk Shake Pequeno',8),(13,'Sorvete',13),(14,'Suco',2),(15,'Prato Feito',10);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relprodutoingrediente`
--

DROP TABLE IF EXISTS `relprodutoingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relprodutoingrediente` (
  `idRELPRODUTOINGREDIENTE` int NOT NULL AUTO_INCREMENT,
  `CODPRODUTO` int DEFAULT NULL,
  `CODINGREDIENTE` int DEFAULT NULL,
  `ingredienteQTD` float DEFAULT NULL,
  PRIMARY KEY (`idRELPRODUTOINGREDIENTE`),
  KEY `FK_PRODUTOINGREDIENTE_idx` (`CODPRODUTO`),
  KEY `FK_ESTOQUEINGREDIENTE_idx` (`CODINGREDIENTE`),
  CONSTRAINT `FK_ESTOQUEINGREDIENTE` FOREIGN KEY (`CODINGREDIENTE`) REFERENCES `controleestoque` (`idCONTROLEESTOQUE`),
  CONSTRAINT `FK_PRODUTOINGREDIENTE` FOREIGN KEY (`CODPRODUTO`) REFERENCES `produto` (`idPRODUTO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relprodutoingrediente`
--

LOCK TABLES `relprodutoingrediente` WRITE;
/*!40000 ALTER TABLE `relprodutoingrediente` DISABLE KEYS */;
INSERT INTO `relprodutoingrediente` VALUES (1,8,14,8),(2,4,13,1),(3,7,10,0.003),(4,3,6,0.2),(5,2,7,0.3),(6,9,7,0.6),(7,10,9,0.03),(8,12,9,0.02),(9,13,9,0.01),(10,15,14,0.8),(11,1,2,0.02),(12,14,12,1),(13,8,15,0.5),(14,5,15,0.5),(15,6,3,0.003);
/*!40000 ALTER TABLE `relprodutoingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rua`
--

DROP TABLE IF EXISTS `rua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rua` (
  `idRUA` int NOT NULL AUTO_INCREMENT,
  `ruaNOME` varchar(255) DEFAULT NULL,
  `CODBAIRRO` int DEFAULT NULL,
  PRIMARY KEY (`idRUA`),
  KEY `FK_BAIRRO_idx` (`CODBAIRRO`),
  CONSTRAINT `FK_BAIRRO` FOREIGN KEY (`CODBAIRRO`) REFERENCES `bairro` (`idBAIRRO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rua`
--

LOCK TABLES `rua` WRITE;
/*!40000 ALTER TABLE `rua` DISABLE KEYS */;
INSERT INTO `rua` VALUES (1,'Rua das Araucarias',8),(2,'Rua Padre Ancheita',5),(3,'Rua Brasil',3),(4,'Rua Chile',1),(5,'Rua Jose Eduardo',2),(6,'Av Rio Grande do Sul',6),(7,'Av Parana',4),(8,'Rua Santo Inacio',7),(9,'Rua Osvaldo Aranha',9),(10,'Rua Jucelino',11),(11,'Rua Mato Grosso',13),(12,'Rua Santos Drumond',14),(13,'Rua Albert Ainstein',15),(14,'Rua Senador Atilio',10),(15,'Rua da Liberdade',12);
/*!40000 ALTER TABLE `rua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `idTELEFONE` int NOT NULL AUTO_INCREMENT,
  `CODPESSOA` int DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTELEFONE`),
  KEY `FK_PESSOATELEFONE_idx` (`CODPESSOA`),
  CONSTRAINT `FK_PESSOATELEFONE` FOREIGN KEY (`CODPESSOA`) REFERENCES `pessoa` (`idPESSOA`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (16,2,'999223940'),(17,2,'988343489'),(18,4,'998343383'),(19,7,'918351289'),(20,9,'980322385'),(21,12,'933343483'),(22,10,'928043000'),(23,3,'933004080'),(24,11,'988343489'),(25,15,'4239614206'),(26,8,'4122102841'),(27,13,'4522842825'),(28,14,'4534134082'),(29,7,'4227270155'),(30,6,'4620537984');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendadetalhe`
--

DROP TABLE IF EXISTS `vendadetalhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendadetalhe` (
  `idVENDADETALHE` int NOT NULL AUTO_INCREMENT,
  `CODPRODUTO` int DEFAULT NULL,
  `valorUNITARIO` float DEFAULT NULL,
  `vendadetalheQTD` int DEFAULT NULL,
  PRIMARY KEY (`idVENDADETALHE`),
  KEY `FK_PRODUTODETALHE_idx` (`CODPRODUTO`),
  CONSTRAINT `FK_PRODUTODETALHE` FOREIGN KEY (`CODPRODUTO`) REFERENCES `produto` (`idPRODUTO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendadetalhe`
--

LOCK TABLES `vendadetalhe` WRITE;
/*!40000 ALTER TABLE `vendadetalhe` DISABLE KEYS */;
INSERT INTO `vendadetalhe` VALUES (1,2,28.5,1),(2,3,5.8,3),(3,4,4.3,2),(4,10,10.37,4),(5,12,31.29,1),(6,14,2.1,1),(7,13,6.2,2),(8,15,25.2,6),(9,14,2.1,1),(10,12,12.2,3),(11,9,10.22,2),(12,5,8.2,1),(13,6,5.12,1),(14,12,25.2,1),(15,14,21.2,4);
/*!40000 ALTER TABLE `vendadetalhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendamestre`
--

DROP TABLE IF EXISTS `vendamestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendamestre` (
  `idVENDAMESTRE` int NOT NULL AUTO_INCREMENT,
  `CODPESSOA` int DEFAULT NULL,
  `CODVENDEDOR` int DEFAULT NULL,
  `valorTOTAL` varchar(255) DEFAULT NULL,
  `entregaVENDAMESTRE` tinyint DEFAULT NULL,
  `CODVENDADETALHE` int DEFAULT NULL,
  PRIMARY KEY (`idVENDAMESTRE`),
  KEY `FK_VENDADETALHE_idx` (`CODVENDADETALHE`),
  KEY `FK_PESSOAVENDA_idx` (`CODPESSOA`),
  KEY `FK_VENDEDOR_idx` (`CODVENDEDOR`),
  CONSTRAINT `FK_PESSOAVENDA` FOREIGN KEY (`CODPESSOA`) REFERENCES `pessoa` (`idPESSOA`),
  CONSTRAINT `FK_VENDADETALHE` FOREIGN KEY (`CODVENDADETALHE`) REFERENCES `vendadetalhe` (`idVENDADETALHE`),
  CONSTRAINT `FK_VENDEDOR` FOREIGN KEY (`CODVENDEDOR`) REFERENCES `pessoa` (`idPESSOA`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendamestre`
--

LOCK TABLES `vendamestre` WRITE;
/*!40000 ALTER TABLE `vendamestre` DISABLE KEYS */;
INSERT INTO `vendamestre` VALUES (1,2,8,'38.6',0,1),(2,6,13,'10.37',0,4),(3,9,15,'33.39',0,12),(4,8,11,'33.5',0,8),(5,5,13,'22.42',1,11),(6,4,13,'38.6',1,14),(7,3,8,'21.2',1,15),(8,11,8,'13.23',0,7),(9,11,13,'25.2',0,9),(10,15,8,'23.4',0,5),(11,12,15,'21.5',1,3),(12,1,10,'32.2',1,2),(13,7,13,'14.5',0,13),(14,10,15,'13.4',0,10),(15,14,11,'17.2',0,6);
/*!40000 ALTER TABLE `vendamestre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 19:33:47
