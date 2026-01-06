CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `id_aluno` int DEFAULT NULL,
  `id_do_curso` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_aluno` (`id_aluno`),
  KEY `id_do_curso` (`id_do_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'2025-10-10',1,2),(2,'2020-01-04',2,6),(3,'2022-12-10',3,4),(4,'2026-01-05',4,5),(5,'2025-10-01',10,8),(6,'2025-09-12',22,30);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `total_aulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2026',
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2025),(2,'Algoritmos','Lógica de programação',20,15,2014),(3,'PHP','Curso para iniciantes',40,20,2010),(4,'Java','Introdução a linguagem',40,30,2026),(5,'MySQL','Banco de dados MySQL',30,15,2025),(7,'CSS3','Curso de estilização com CSS3',35,28,2025),(8,'JavaScript','Programação JavaScript básica',40,32,2026),(9,'Python','Introdução à linguagem Python',45,36,2026),(10,'C','Programação em linguagem C',40,30,2024),(11,'C++','Programação orientada a objetos',45,35,2024),(12,'C#','Introdução ao C#',40,30,2026),(13,'NodeJS','Back-end com Node.js',35,25,2026),(14,'React','Desenvolvimento front-end com React',40,30,2026),(15,'Angular','Framework Angular',40,28,2025),(16,'Bootstrap','Framework CSS Bootstrap',20,15,2024),(17,'Git','Controle de versão com Git',20,12,2025),(18,'GitHub','Repositórios e versionamento',20,14,2025),(19,'Linux','Introdução ao sistema Linux',30,20,2024),(20,'Windows Server','Administração de servidores Windows',40,25,2025),(21,'Redes Avançadas','Conceitos avançados de redes',45,30,2026),(22,'Segurança','Segurança da informação',35,22,2026),(23,'Cloud','Computação em nuvem',40,26,2026),(24,'AWS','Serviços da AWS',45,30,2026),(25,'Azure','Microsoft Azure na prática',45,28,2026),(26,'DevOps','Integração e entrega contínua',40,25,2026),(27,'Docker','Containers com Docker',30,20,2026),(28,'Kubernetes','Orquestração de containers',40,25,2026),(29,'UX Design','Experiência do usuário',25,18,2025),(30,'UI Design','Design de interfaces',25,18,2025),(31,'Figma','Prototipação com Figma',20,15,2025),(32,'Power BI','Análise de dados com Power BI',30,20,2026),(33,'Excel','Excel aplicado a negócios',25,18,2024),(34,'IA','Introdução à Inteligência Artificial',40,28,2026),(35,'Machine Learning','Fundamentos de Machine Learning',45,30,2026),(36,'Data Science','Ciência de dados',50,35,2026);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT 'Brasil',
  `curso_escolhido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `curso_escolhido` (`curso_escolhido`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Angelina','Estudante','1995-03-28','F',80,1.62,'Brasil',6),(2,'Paola','Estudante','1995-03-28','F',80,1.62,'Brasil',1),(3,'Nick','Professor','2000-11-01','M',50,1.65,'Brasil',12),(4,'Carolina','Estudante','1986-08-10','F',75,1.7,'Brasil',20),(5,'Nicolas','Estudante','2000-04-16','M',80,1.7,'Brasil',10),(6,'Adam','Professor','2014-12-10','M',40,1.4,'Brasil',2),(7,'Ana Silva','Engenheiro','1995-03-12','F',62.5,1.65,'Brasil',5),(8,'Carlos Souza','Estudante','1988-07-25','M',80.2,1.78,'Irlanda',NULL),(9,'Mariana Costa','Professor','2000-01-05','F',55,1.6,'USA',NULL),(10,'João Pereira','Estudante','1992-11-18','M',85.3,1.82,'Brasil',NULL),(11,'Fernanda Lima','Estudante','1985-06-30','F',68.4,1.7,'Brasil',NULL),(12,'Lucas Rocha','Professor','1999-09-10','M',72,1.75,'México',NULL),(13,'Patrícia Alves','Engenheiro','1993-04-22','F',60.8,1.62,'México',NULL),(14,'Rafael Martins','Engenheiro','1987-12-02','M',90.1,1.8,'Italia',NULL),(15,'Juliana Ribeiro','Engenheiro','1996-08-14','F',58.2,1.64,'Portugal',NULL),(16,'Bruno Araujo','Engenheiro','1991-05-19','M',77.6,1.76,'Italia',NULL),(17,'Camila Freitas','Costureiro','1998-02-11','F',63,1.68,'Portugal',NULL),(18,'Diego Nunes','Costureiro','1984-10-07','M',88.5,1.79,'Brasil',NULL),(19,'Larissa Teixeira','Costureiro','2001-07-03','F',54.9,1.59,'Irlanda',NULL),(20,'Thiago Barros','Costureiro','1990-01-27','M',82.4,1.77,'Canadá',NULL),(21,'Renata Pacheco','Costureiro','1989-09-09','F',66.7,1.66,'Brasil',NULL),(22,'Felipe Guedes','Costureiro','1997-06-21','M',74.3,1.74,'Brasil',NULL),(23,'Aline Farias','Professor','1994-12-15','F',61.1,1.63,'Brasil',NULL),(24,'Eduardo Melo','Maquiador','1986-03-08','M',91,1.83,'Brasil',NULL),(25,'Natália Cunha','Eletricista','2000-10-29','F',56.4,1.61,'USA',NULL),(26,'André Lopes','Eletricista','1992-04-04','M',79.8,1.78,'USA',NULL),(27,'Paula Batista','Maquiador','1995-05-16','F',64.2,1.67,'México',NULL),(28,'Gustavo Moreira','Maquiador','1988-08-23','M',86.9,1.81,'Brasil',NULL),(29,'Bianca Torres','Eletricista','1999-01-12','F',57,1.6,'Brasil',NULL),(30,'Henrique Rangel','Maquiador','1991-09-30','M',83.5,1.79,'Brasil',NULL),(31,'Tatiane Braga','Eletricista','1987-11-06','F',69.3,1.69,'Brasil',NULL),(32,'Igor Vasconcelos','Maquiador','1996-02-18','M',76.1,1.75,'Brasil',NULL),(33,'Débora Macedo','Eletricista','1993-07-27','F',62.8,1.65,'Brasil',NULL),(34,'Marcelo Peixoto','Professor','1985-12-14','M',89.7,1.82,'Brasil',NULL),(35,'Sabrina Lemos','Estudante','1998-04-09','F',55.6,1.58,'Brasil',NULL),(36,'Rodrigo Tavares','Eletricista','1990-06-01','M',81.4,1.77,'Brasil',NULL),(37,'Vanessa Duarte','Eletricista','1994-10-20','F',63.9,1.66,'Brasil',NULL),(38,'Leonardo Pinto','Médico','1989-01-28','M',84.6,1.8,'Brasil',NULL),(39,'Carolina Neves','Médico','2002-03-13','F',53.4,1.57,'Brasil',NULL),(40,'Fábio Coelho','Maquiador','1991-08-17','M',78.2,1.76,'Brasil',NULL),(41,'Monique Guimarães','Eletricista','1997-12-05','F',59.7,1.62,'Brasil',NULL),(42,'Renan Siqueira','Maquiador','1986-05-26','M',92.3,1.85,'Brasil',NULL),(43,'Isabela Prado','Médico','1999-09-08','F',56.8,1.61,'Brasil',NULL),(44,'Daniel Fonseca','Médico','1993-02-02','M',80.9,1.78,'Brasil',NULL),(45,'Luciana Azevedo','Enfermeiro','1988-06-11','F',67.5,1.68,'Brasil',NULL),(46,'Victor Antunes','Enfermeiro','1995-11-24','M',75.4,1.74,'Brasil',NULL),(47,'Priscila Monteiro','Enfermeiro','1996-01-14','F',60.2,1.64,'Italia',NULL),(48,'Alexandre Rios','Enfermeiro','1987-07-19','M',87.1,1.81,'Italia',NULL),(49,'Beatriz Moraes','Enfermeiro','2000-05-31','F',55.1,1.59,'Italia',NULL),(50,'Caio Brandão','Médico','1992-03-06','M',82,1.77,'Italia',NULL),(51,'Flávia Rezende','Médico','1994-09-22','F',64.6,1.66,'Brasil',NULL),(52,'Otávio Lacerda','Enfermeiro','1989-12-10','M',90.5,1.83,'Japão',NULL),(53,'Raquel Silveira','Enfermeiro','1997-08-04','F',58.9,1.63,'China',NULL),(54,'Matheus Pimentel','Médico','1995-04-18','M',77.8,1.75,'Brasil',NULL);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-06 15:09:12
