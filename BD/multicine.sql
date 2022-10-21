/*
Navicat MySQL Data Transfer

Source Server         : ThulioBatista
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : multicine

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-10-20 21:43:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ator
-- ----------------------------
DROP TABLE IF EXISTS `ator`;
CREATE TABLE `ator` (
  `CODATOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODATOR`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ator
-- ----------------------------
INSERT INTO `ator` VALUES ('1', 'Adam Sandler');
INSERT INTO `ator` VALUES ('2', 'Kate Beckinsale');
INSERT INTO `ator` VALUES ('3', 'Frank Coraci');
INSERT INTO `ator` VALUES ('4', 'Christopher Walken');
INSERT INTO `ator` VALUES ('5', 'Jonah Hill');
INSERT INTO `ator` VALUES ('6', 'Natalie Portman');
INSERT INTO `ator` VALUES ('7', 'Mila Kunis');
INSERT INTO `ator` VALUES ('8', 'Winona Ryder');
INSERT INTO `ator` VALUES ('9', 'Vincent Cassel');
INSERT INTO `ator` VALUES ('10', 'Barbara Hershey');
INSERT INTO `ator` VALUES ('12', 'Bill Paxton');
INSERT INTO `ator` VALUES ('13', 'William Hope');
INSERT INTO `ator` VALUES ('14', 'Jenette Goldstein');
INSERT INTO `ator` VALUES ('15', 'Al Matthews');
INSERT INTO `ator` VALUES ('16', 'Mark Rolston');
INSERT INTO `ator` VALUES ('17', 'Ricco Ross');
INSERT INTO `ator` VALUES ('18', 'Katie Holmes');
INSERT INTO `ator` VALUES ('19', 'Christopher Convery');
INSERT INTO `ator` VALUES ('20', 'Ralph Ineson');
INSERT INTO `ator` VALUES ('21', 'Anjali Jay');
INSERT INTO `ator` VALUES ('22', 'Anya Taylor-Joy');
INSERT INTO `ator` VALUES ('23', 'Harvey Scrimshaw');
INSERT INTO `ator` VALUES ('24', 'Sarah Stephens');
INSERT INTO `ator` VALUES ('25', 'Ellie Grainger');
INSERT INTO `ator` VALUES ('26', 'Sissy Spackek');
INSERT INTO `ator` VALUES ('27', 'Stepheng King');
INSERT INTO `ator` VALUES ('28', 'John Travolta');
INSERT INTO `ator` VALUES ('29', 'Piper Laurie');
INSERT INTO `ator` VALUES ('30', 'Nancy Allen');
INSERT INTO `ator` VALUES ('31', 'Katie Stevens');
INSERT INTO `ator` VALUES ('32', 'Damian Maffei');
INSERT INTO `ator` VALUES ('33', 'Lauryn McClain');
INSERT INTO `ator` VALUES ('34', 'Eli Roth');
INSERT INTO `ator` VALUES ('35', 'Will Brittain');
INSERT INTO `ator` VALUES ('36', 'Fiona Dourif');
INSERT INTO `ator` VALUES ('37', 'Brad Dourif');
INSERT INTO `ator` VALUES ('38', 'Jennifer Tilly');
INSERT INTO `ator` VALUES ('39', 'Alex Vicent');
INSERT INTO `ator` VALUES ('40', 'Danielle Bisutti');
INSERT INTO `ator` VALUES ('41', 'Daniel Kaluuya');
INSERT INTO `ator` VALUES ('42', 'Allison Williams');
INSERT INTO `ator` VALUES ('43', 'Lil Rel Howery');
INSERT INTO `ator` VALUES ('44', 'Lakeith Stanfield');
INSERT INTO `ator` VALUES ('45', 'Catherine Keener');
INSERT INTO `ator` VALUES ('46', 'Rebecca Ferguson');
INSERT INTO `ator` VALUES ('47', 'Ewan McGregor');
INSERT INTO `ator` VALUES ('48', 'Kyliegh Curran');
INSERT INTO `ator` VALUES ('49', 'Jacob Tremblay');
INSERT INTO `ator` VALUES ('50', 'Emily Anly Lind');
INSERT INTO `ator` VALUES ('51', 'Andrea Riseborough');
INSERT INTO `ator` VALUES ('52', 'John Clo');
INSERT INTO `ator` VALUES ('53', 'Lin Shaye');
INSERT INTO `ator` VALUES ('54', 'Démian Bichir');
INSERT INTO `ator` VALUES ('55', 'Zoe Fish');
INSERT INTO `ator` VALUES ('56', 'John Krasinski');
INSERT INTO `ator` VALUES ('57', 'Emily Blunt');
INSERT INTO `ator` VALUES ('58', 'Millicent Simmonds');
INSERT INTO `ator` VALUES ('59', 'Noah Jupe');
INSERT INTO `ator` VALUES ('60', 'Cillian Murphy');
INSERT INTO `ator` VALUES ('61', 'Lulu Wilson');
INSERT INTO `ator` VALUES ('62', 'Elizabeth Reaser');
INSERT INTO `ator` VALUES ('63', 'Annalise Basso');
INSERT INTO `ator` VALUES ('64', 'Kate Siegel');
INSERT INTO `ator` VALUES ('65', 'Henry Thomas');
INSERT INTO `ator` VALUES ('66', 'Michelle Van Der Nest');
INSERT INTO `ator` VALUES ('67', 'Jonathan Boyton-Lee');
INSERT INTO `ator` VALUES ('68', 'Jade Hubner ');
INSERT INTO `ator` VALUES ('69', 'Jay Anstey');
INSERT INTO `ator` VALUES ('70', 'Candice Weber');

-- ----------------------------
-- Table structure for atuacaofilme
-- ----------------------------
DROP TABLE IF EXISTS `atuacaofilme`;
CREATE TABLE `atuacaofilme` (
  `CODATOR` int(11) NOT NULL,
  `CODFILME` int(11) NOT NULL,
  PRIMARY KEY (`CODATOR`,`CODFILME`),
  KEY `CODFILME` (`CODFILME`),
  CONSTRAINT `atuacaofilme_ibfk_1` FOREIGN KEY (`CODATOR`) REFERENCES `ator` (`CODATOR`),
  CONSTRAINT `atuacaofilme_ibfk_2` FOREIGN KEY (`CODFILME`) REFERENCES `filmes` (`CODFILME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of atuacaofilme
-- ----------------------------
INSERT INTO `atuacaofilme` VALUES ('1', '4');
INSERT INTO `atuacaofilme` VALUES ('2', '4');
INSERT INTO `atuacaofilme` VALUES ('3', '4');
INSERT INTO `atuacaofilme` VALUES ('4', '4');
INSERT INTO `atuacaofilme` VALUES ('5', '4');
INSERT INTO `atuacaofilme` VALUES ('6', '3');
INSERT INTO `atuacaofilme` VALUES ('7', '3');
INSERT INTO `atuacaofilme` VALUES ('8', '3');
INSERT INTO `atuacaofilme` VALUES ('9', '3');
INSERT INTO `atuacaofilme` VALUES ('10', '3');

-- ----------------------------
-- Table structure for atuacaoserie
-- ----------------------------
DROP TABLE IF EXISTS `atuacaoserie`;
CREATE TABLE `atuacaoserie` (
  `CODATOR` int(11) NOT NULL,
  `CODSERIE` int(11) NOT NULL,
  PRIMARY KEY (`CODATOR`,`CODSERIE`),
  KEY `CODSERIE` (`CODSERIE`),
  CONSTRAINT `atuacaoserie_ibfk_1` FOREIGN KEY (`CODATOR`) REFERENCES `ator` (`CODATOR`),
  CONSTRAINT `atuacaoserie_ibfk_2` FOREIGN KEY (`CODSERIE`) REFERENCES `series` (`CODSERIE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of atuacaoserie
-- ----------------------------

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `CODEMPRESA` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `RAZAOSOCIAL` varchar(50) DEFAULT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `CNPJ` varchar(14) NOT NULL DEFAULT '',
  `ENDERECO` varchar(40) DEFAULT NULL,
  `BAIRRO` varchar(20) DEFAULT NULL,
  `CIDADE` varchar(30) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `FONE` varchar(18) DEFAULT NULL,
  `FAX` varchar(18) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CONTATO` varchar(50) DEFAULT NULL,
  `VISAO` varchar(300) DEFAULT '',
  `MISSAO` varchar(300) DEFAULT '',
  `VALOR` varchar(300) DEFAULT '',
  PRIMARY KEY (`CODEMPRESA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('01', 'Multicine ltda', 'Multicine', '22446925000101', 'Rua Alexandrita 669', 'Betânia', 'Belo Horizonte', 'MG', '30580490', '3136795177', null, 'contato@multicine.com.br', '31983948549', 'O Multicine busca ser o melhor serviço de streaming do mundo, sendo ela responsável por licenciar o maior número possível de obras de entretenimento em todo o globo.', 'A missão do Multicine é entreter o mundo, e é por isso que levamos até você as melhores séries, documentários, filmes e jogos para celulares e dispositivos móveis. Nossos assinantes controlam o que querem ver e quando, sem anúncios, com uma única assinatura.', 'O Multicine tem como principais valores: Produtividade; criatividade. Comunicação; paixão e confiança sobre os seus serviços.');

-- ----------------------------
-- Table structure for filmes
-- ----------------------------
DROP TABLE IF EXISTS `filmes`;
CREATE TABLE `filmes` (
  `CODFILME` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(50) DEFAULT NULL,
  `ANO` varchar(50) DEFAULT NULL,
  `DIRETOR` varchar(50) DEFAULT NULL,
  `SINOPSE` varchar(600) DEFAULT NULL,
  `CODGENERO` int(11) DEFAULT NULL,
  `SUBGENERO` int(11) DEFAULT NULL,
  `CLASSIFICACAO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODFILME`),
  KEY `CODGENERO` (`CODGENERO`),
  CONSTRAINT `filmes_ibfk_1` FOREIGN KEY (`CODGENERO`) REFERENCES `genero` (`CODGENERO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of filmes
-- ----------------------------
INSERT INTO `filmes` VALUES ('1', 'BOHEMIAN RHAPSODY', '2018', 'Bryan Singer, Dexter Fletcher', 'Freddie Mercury (Rami Malek) e seus companheiros Brian May (Gwilyn Lee), Roger Taylor (Ben Hardy) e John Deacon (Joseph Mazzello) mudam o mundo da música para sempre ao formar a banda Queen, durante a década de 1970. Porém, quando o estilo de vida extravagante de Mercury começa a sair do controle, a banda tem que enfrentar o desafio de conciliar a fama e o sucesso com suas vidas pessoais cada vez mais complicadas', '22', '13', '14 anos');
INSERT INTO `filmes` VALUES ('2', 'A MENINA QUE ROUBAVA LIVROS', '2013', 'Brian Percival', 'Durante a Segunda Guerra Mundial, uma jovem garota chamada Liesel Meminger (Sophie Nélisse) sobrevive fora de Munique através dos livros que ela rouba. Ajudada por seu pai adotivo (Geoffrey Rush), ela aprende a ler e partilhar livros com seus amigos, incluindo um homem judeu (Ben Schnetzer) que vive na clandestinidade em sua casa. Enquanto não está lendo ou estudando, ela realiza algumas tarefas para a mãe (Emily Watson) e brinca com a amigo Rudy (Nico Liersch).', '20', '13', '10 anos');
INSERT INTO `filmes` VALUES ('3', 'CISNE NEGRO', '2010', 'Darren Aronofsky', 'Beth MacIntyre (Winona Ryder), a primeira bailarina de uma companhia, está prestes a se aposentar. O posto fica com Nina (Natalie Portman), mas ela possui sérios problemas pessoais, especialmente com sua mãe (Barbara Hershey). Pressionada por Thomas Leroy (Vincent Cassel), um exigente diretor artístico, ela passa a enxergar uma concorrência desleal vindo de suas colegas, em especial Lilly (Mila Kunis). Em meio a tudo isso, busca a perfeição nos ensaios para o maior desafio de sua carreira: interpretar a Rainha Cisne em uma adaptação de \"O Lago dos Cisnes\".', '13', '26', '10 anos');
INSERT INTO `filmes` VALUES ('4', 'CLICK', '2006', 'Frank Coraci', 'Em Click, Michael Newman (Adam Sandler) é casado com Donna (Kate Beckinsale) e tem dois filhos. Ele tem dificuldades em ver sua família, visto que passa bastante tempo no escritório de arquitetura em que trabalha, no intuito de chamar a atenção de seu chefe (David Hasselhoff). Porém, após entrar em uma loja com intuito de comprar um novo controle remoto para sua casa, parece ter encontrado uma solução para seu problema. Isso porque, ao chegar no local, conhece o excêntrico funcionário Morty (Christopher Walken), e acaba comprando um controle remoto experimental, com a promessa de facilitar sua', '5', '16', '12 anos');

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `CODGENERO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCIRCAO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODGENERO`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of genero
-- ----------------------------
INSERT INTO `genero` VALUES ('1', 'Ação');
INSERT INTO `genero` VALUES ('2', 'Aventura');
INSERT INTO `genero` VALUES ('3', 'Cinema de arte');
INSERT INTO `genero` VALUES ('4', 'Chanchada');
INSERT INTO `genero` VALUES ('5', 'Comédia');
INSERT INTO `genero` VALUES ('6', 'Comédia de ação');
INSERT INTO `genero` VALUES ('7', 'Comédia de terror');
INSERT INTO `genero` VALUES ('8', 'Comédia dramática');
INSERT INTO `genero` VALUES ('9', 'Comédia romântica');
INSERT INTO `genero` VALUES ('10', 'Dança');
INSERT INTO `genero` VALUES ('11', 'Documentário');
INSERT INTO `genero` VALUES ('12', 'Docuficção');
INSERT INTO `genero` VALUES ('13', 'Drama');
INSERT INTO `genero` VALUES ('14', 'Espionagem');
INSERT INTO `genero` VALUES ('15', 'Faroeste');
INSERT INTO `genero` VALUES ('16', 'Fantasia');
INSERT INTO `genero` VALUES ('17', 'Fantasia científica');
INSERT INTO `genero` VALUES ('18', 'Ficção científica');
INSERT INTO `genero` VALUES ('19', 'Filmes com truques');
INSERT INTO `genero` VALUES ('20', 'Guerra');
INSERT INTO `genero` VALUES ('21', 'Mistério');
INSERT INTO `genero` VALUES ('22', 'Musical');
INSERT INTO `genero` VALUES ('23', 'Filme policial');
INSERT INTO `genero` VALUES ('24', 'Romance');
INSERT INTO `genero` VALUES ('25', 'Terror');
INSERT INTO `genero` VALUES ('26', 'Thriller');
INSERT INTO `genero` VALUES ('27', 'Suspense');

-- ----------------------------
-- Table structure for series
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series` (
  `CODSERIE` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(50) DEFAULT NULL,
  `ANO` varchar(50) DEFAULT NULL,
  `DIRETOR` varchar(50) DEFAULT NULL,
  `SINOPSE` varchar(600) DEFAULT NULL,
  `CODGENERO` int(11) DEFAULT NULL,
  `SUBGENERO` int(11) DEFAULT NULL,
  `TEMPORADAS` int(11) DEFAULT NULL,
  `CLASSIFICACAO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODSERIE`),
  KEY `CODGENERO` (`CODGENERO`),
  KEY `SUBGENERO` (`SUBGENERO`),
  CONSTRAINT `series_ibfk_1` FOREIGN KEY (`CODGENERO`) REFERENCES `genero` (`CODGENERO`),
  CONSTRAINT `series_ibfk_2` FOREIGN KEY (`SUBGENERO`) REFERENCES `genero` (`CODGENERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of series
-- ----------------------------

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `CODUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `SENHA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'teste', 'thulio.batista@multicine.com.br', '123');
