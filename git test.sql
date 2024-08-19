CREATE DATABASE  IF NOT EXISTS `gerenciador` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `gerenciador`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: gerenciador
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) NOT NULL,
  `Sobrenome` varchar(30) DEFAULT NULL,
  `Data_nacimento` date DEFAULT NULL,
  `CPF_CNPJ` varchar(20) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Endereço` varchar(40) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João Silva','Santos','1985-02-10','123.456.789-01','joao.silva@exemplo.com','(11) 9987-2617','Rua das Flores, 123, São Paulo, SP','2024-04-03'),(2,'Mariana','da Silva','2000-04-28','213.374.748-02','mari.silva@exemplo.com','(44) 9900-4417','Rua professor clero, 1357, Maringá, PR','2023-01-10'),(3,'José ','Ferreira ','1970-02-27','483.382.293-92','jose.ferrera@exemplo.com','(44) 9938-2384','Rua Jetulio Vargas, 123, Curitiba, PR','2005-09-02'),(4,'Calos da Costa','dos Santos ','2001-08-11','377.837.234-80','carlos.santos@exemplo.com','(44) 9928-3722','Av.brasil, 239, Maringá, PR','2021-02-10'),(5,'Alfredo Moisés ','Maluf','1978-02-01','382.283.283-38','alfredo.maluf@exemplo.com','(31) 9923-4842','av.brasil, 299, Maringá, PR ','2019-09-29');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id_entrega` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `endereço` varchar(50) DEFAULT NULL,
  `prazo_entrega` date DEFAULT NULL,
  `status_entrega` enum('Entrege','N-entrege') DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_mensais`
--

DROP TABLE IF EXISTS `gastos_mensais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastos_mensais` (
  `id_gastos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `valor_diario_min` decimal(5,2) DEFAULT NULL,
  `valor_mensal_min` decimal(5,2) DEFAULT NULL,
  `valor_anual_min` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_gastos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_mensais`
--

LOCK TABLES `gastos_mensais` WRITE;
/*!40000 ALTER TABLE `gastos_mensais` DISABLE KEYS */;
INSERT INTO `gastos_mensais` VALUES (1,'aluguel',100.00,3.00,36.00),(2,'energia',20.00,600.00,7.20),(3,'água ',16.00,500.00,6.00);
/*!40000 ALTER TABLE `gastos_mensais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_pedidos`
--

DROP TABLE IF EXISTS `itens_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_pedidos` (
  `id_item_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade_Metros` int(11) DEFAULT NULL,
  `quantidade_Unidade` int(11) DEFAULT NULL,
  `preco_unitario` decimal(5,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_item_pedido`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `itens_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `itens_pedidos_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_pedidos`
--

LOCK TABLES `itens_pedidos` WRITE;
/*!40000 ALTER TABLE `itens_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `itens_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_prima`
--

DROP TABLE IF EXISTS `materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_prima` (
  `id_materia_prima` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Composicao` text DEFAULT NULL,
  `Peso` decimal(4,2) DEFAULT NULL,
  `Quantidade_estoque` int(11) DEFAULT NULL,
  `Unidade_medida` varchar(10) DEFAULT NULL,
  `Fornecedor` varchar(50) DEFAULT NULL,
  `Endereço_fornecedor` varchar(100) DEFAULT NULL,
  `Custo_unitario` decimal(5,2) DEFAULT NULL,
  `Data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id_materia_prima`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `metodo_de_pagamento` varchar(20) DEFAULT NULL,
  `valor_pago` decimal(5,2) DEFAULT NULL,
  `status_pagamento` enum('Pago','N-pago') DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  `total_pedido` varchar(1000) DEFAULT NULL,
  `status_pedido` enum('Entregue','N-Entrege') DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`Id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preço_Custo` decimal(5,2) DEFAULT NULL,
  `Preço_Venda` decimal(5,2) DEFAULT NULL,
  `Quantidade_estoque` int(11) DEFAULT NULL,
  `unidade_de_medida` varchar(10) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19 19:44:52
