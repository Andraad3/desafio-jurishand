CREATE DATABASE  IF NOT EXISTS `jurishand` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jurishand`;
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 172.18.0.2    Database: jurishand
-- ------------------------------------------------------
-- Server version	5.7.41

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,'Lei de Drogas','Luís Inácio Lula da Silva','Art. 1.º  Esta Lei institui o Sistema Nacional de Políticas Públicas sobre Drogas - Sisnad; prescreve medidas para prevenção do uso indevido, atenção e reinserção social de usuários e dependentes de drogas; estabelece normas para repressão à produção não autorizada e ao tráfico ilícito de drogas e define crimes. \nParágrafo único.  Para fins desta Lei, consideram-se como drogas as substâncias ou os produtos capazes de causar dependência, assim especificados em lei ou relacionados em listas atualizadas periodicamente pelo Poder Executivo da União.','2006-08-23 03:00:00','Penal'),(3,'Lei Geral de Proteção de Dados','Luís Inácio Lula da Silva','LEI N.º 13.709, DE 14 DE AGOSTO DE 2018. Lei Geral de Proteção de Dados Pessoais (LGPD). (Redação dada pela Lei n.º 13.709/2018) D̶i̶s̶p̶õe̶ ̶s̶o̶b̶r̶e̶ ̶a̶ ̶p̶r̶o̶t̶e̶ç̶ã̶o̶ ̶d̶e̶ ̶d̶a̶d̶o̶s̶ ̶p̶e̶s̶s̶o̶a̶i̶s̶ ̶e̶ ̶a̶l̶t̶e̶r̶a̶ ̶a̶ ̶L̶e̶i̶ ̶n̶º̶ ̶1̶2̶.̶9̶6̶5̶,̶ ̶d̶e̶ ̶2̶3̶ ̶d̶e̶ ̶a̶b̶r̶i̶l̶ ̶d̶e̶ ̶2̶0̶1̶4̶ ̶(̶M̶a̶r̶c̶o̶ ̶C̶i̶v̶i̶l̶ ̶d̶a̶ ̶I̶n̶t̶e̶r̶n̶e̶t̶)̶ O PRESIDENTE DA REPÚBLICA Faço saber que o Congresso Nacional decreta e eu sanciono a seguinte Lei: CAPÍTULO I DISPOSIÇÕES PRELIMINARES Art. 1.º  Esta Lei dispõe sobre o tratamento de dados pessoais, inclusive nos meios digitais, por pessoa natural ou por pessoa jurídica de direito público ou privado, com o objetivo de proteger os direitos fundamentais de liberdade e de privacidade e o livre desenvolvimento da personalidade da pessoa natural. Parágrafo único. As normas gerais contidas nesta Lei são de interesse nacional e devem ser observadas pela União, Estados, Distrito Federal e Municípios. (Redação dada pela Lei n.º 13.853/2019)','2018-08-18 03:00:00','Digital'),(4,'Código Civil','FERNANDO HENRIQUE CARDOSO','Art. 1.º Toda pessoa é capaz de direitos e deveres na ordem civil. Art. 2.º A personalidade civil da pessoa começa do nascimento com vida; mas a lei põe a salvo, desde a concepção, os direitos do nascituro. Art. 3.º São absolutamente incapazes de exercer pessoalmente os atos da vida civil os menores de 16 (dezesseis) anos. (Redação dada pela Lei n.º 13.146, de 2015) (Vigência) I - (Revogado); (Redação dada pela Lei n.º 13.146, de 2015) (Vigência) II - (Revogado); (Redação dada pela Lei n.º 13.146, de 2015) (Vigência) III - (Revogado). (Redação dada pela Lei n.º 13.146, de 2015) (Vigência) É inadmissível a declaração de incapacidade absoluta às pessoas com enfermidade ou deficiência mental. ​A questão consiste em definir se, à luz das alterações promovidas pelo Estatuto da Pessoa com Deficiência, quanto ao regime das incapacidades, reguladas pelos arts. 3º e 4º do Código Civil, é possível declarar como absolutamente incapaz adulto que, por causa permanente, encontra-se inapto para gerir sua pessoa e administrar seus bens de modo voluntário e consciente. A Lei n. 13.146/2015 tem por objetivo assegurar e promover a inclusão social das pessoas com deficiência física ou psíquica e garantir o exercício de sua capacidade em igualdade de condições com as demais pessoas. A partir da entrada em vigor da referida lei, a incapacidade absoluta para exercer pessoalmente os atos da vida civil se restringe aos menores de 16 (dezesseis) anos, ou seja, o critério passou a ser apenas etário, tendo sido eliminadas as hipóteses de deficiência mental ou intelectual anteriormente previstas no Código Civil. Sob essa perspectiva, o art. 84, § 3º, da Lei n. 13.146/2015 estabelece que o instituto da curatela pode ser excepcionalmente aplicado às pessoas portadoras de deficiência, ainda que agora sejam consideradas relativamente capazes, devendo, contudo, ser proporcional às necessidades e às circunstâncias de cada caso concreto.','2002-01-10 02:00:00','Civil');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04  0:47:05
