# Host: localhost  (Version 5.5.5-10.4.18-MariaDB)
# Date: 2024-09-10 17:07:22
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "aliquotas"
#

DROP TABLE IF EXISTS `aliquotas`;
CREATE TABLE `aliquotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aliquota` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `sincronizado` varchar(255) DEFAULT NULL,
  `aliquotaConfins` double DEFAULT NULL,
  `aliquotaICMS` double DEFAULT NULL,
  `aliquotaICMSST` double DEFAULT NULL,
  `aliquotaIPI` double DEFAULT NULL,
  `aliquotaPIS` double DEFAULT NULL,
  `aliquotaPadrao` bit(1) NOT NULL,
  `cofinsCST` varchar(255) DEFAULT NULL,
  `icmsCST` varchar(255) DEFAULT NULL,
  `icmsOrigem` varchar(255) DEFAULT NULL,
  `ipiCST` varchar(255) DEFAULT NULL,
  `modBC` int(11) DEFAULT NULL,
  `modBCST` int(11) DEFAULT NULL,
  `motivoDesoneracao` varchar(255) DEFAULT NULL,
  `percentualBCOperacaoPropria` double DEFAULT NULL,
  `percentualCredSimplesNacional` double DEFAULT NULL,
  `percentualMVA` double DEFAULT NULL,
  `percentualMVAST` double DEFAULT NULL,
  `percentualReducaoBC` double DEFAULT NULL,
  `percentualReducaoBCST` double DEFAULT NULL,
  `pisCST` varchar(255) DEFAULT NULL,
  `precoUnitarioPautaST` double DEFAULT NULL,
  `ufPgtoICMSST` varchar(255) DEFAULT NULL,
  `valorUntTribCofins` double DEFAULT NULL,
  `valorUntTribCofinsST` double DEFAULT NULL,
  `valorUntTribPIS` double DEFAULT NULL,
  `valorUntTribPISST` double DEFAULT NULL,
  `idCfopEstadual` int(11) NOT NULL,
  `idCfopInterEstadual` int(11) NOT NULL,
  `aliquotaFCP` double DEFAULT NULL,
  `aliquotaFCPST` double DEFAULT NULL,
  `CNPJProd` varchar(255) DEFAULT NULL,
  `adRemICMS` decimal(19,5) DEFAULT 0.00000,
  `adRemICMSRet` decimal(19,5) DEFAULT 0.00000,
  `adRemICMSReten` decimal(19,5) DEFAULT 0.00000,
  `classeEnq` varchar(255) DEFAULT NULL,
  `codigoBeneficioFiscal` varchar(255) DEFAULT NULL,
  `codigoEnq` varchar(255) DEFAULT NULL,
  `codigoImendes` int(11) DEFAULT NULL,
  `codigoSelo` varchar(255) DEFAULT NULL,
  `dataHoraAlteracao` datetime DEFAULT NULL,
  `dataHoraRevisao` datetime DEFAULT NULL,
  `icmsLeiLinkSaida` varchar(255) DEFAULT NULL,
  `icmsLeiSaida` varchar(255) DEFAULT NULL,
  `informacaoComplementar` varchar(255) DEFAULT NULL,
  `motRedAdRem` int(11) DEFAULT 9,
  `pRedAdRem` decimal(19,5) DEFAULT 0.00000,
  `percentualDif` decimal(19,5) DEFAULT 0.00000,
  `perfilRevisado` tinyint(1) DEFAULT 0,
  `perfilUnico` tinyint(1) DEFAULT 0,
  `permitirRevisaoTributaria` tinyint(1) DEFAULT 1,
  `possuiIPI` tinyint(1) DEFAULT 0,
  `quantidadeSelo` varchar(255) DEFAULT NULL,
  `idUsuarioAlteracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3xa57wl1yt8stf3lrmjfttqq7` (`idCfopEstadual`),
  KEY `FK_rchcownh2m5shjbjen9lgjp3o` (`idCfopInterEstadual`),
  KEY `FK_jkcj3iq9yp6lqa7gb9kjxqu3n` (`idUsuarioAlteracao`),
  CONSTRAINT `FK_3xa57wl1yt8stf3lrmjfttqq7` FOREIGN KEY (`idCfopEstadual`) REFERENCES `cfop` (`id`),
  CONSTRAINT `FK_jkcj3iq9yp6lqa7gb9kjxqu3n` FOREIGN KEY (`idUsuarioAlteracao`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_rchcownh2m5shjbjen9lgjp3o` FOREIGN KEY (`idCfopInterEstadual`) REFERENCES `cfop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "aliquotas"
#

INSERT INTO `aliquotas` VALUES (1,'II','SEM PERMISSÃO DE CRÉDITO',',',0,0,0,0,0,b'1','01','102','0',NULL,0,0,'9',NULL,NULL,NULL,NULL,0,0,'01',NULL,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0.00000,0.00000,0,0,1,0,NULL,NULL),(2,'FF','SUBSTITUIÇÃO TRIBUTARIA',',',0,0,0,0,0,b'0','99','500','0',NULL,0,0,'9',NULL,NULL,NULL,NULL,0,0,'99',NULL,NULL,NULL,NULL,NULL,NULL,275,392,0,0,NULL,0.00000,0.00000,0.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0.00000,0.00000,0,0,1,0,NULL,NULL),(3,'NN','IMUNE',',',0,0,0,0,0,b'0','01','300','0',NULL,0,0,'9',NULL,NULL,NULL,NULL,0,0,'01',NULL,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,0.00000,0.00000,0,0,1,0,NULL,NULL),(4,'II','CST 00',NULL,0,0,0,0,0,b'0','01','00','0','99',3,0,'9',0,0,0,0,0,0,'01',0,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,NULL,NULL,NULL,NULL,'2024-09-10 16:00:39',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1),(5,'II','CST 10',NULL,0,0,0,0,0,b'0','01','10','0','99',3,0,'9',0,0,0,0,0,0,'01',0,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,'ALTERAR',NULL,NULL,NULL,'2024-09-10 16:03:18',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1),(6,'II','CST 20',NULL,0,0,0,0,0,b'0','01','20','0','99',3,0,'9',0,0,0,0,0,0,'01',0,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,'ALTERAR',NULL,NULL,NULL,'2024-09-10 16:03:30',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1),(7,'II','CST 40',NULL,0,0,0,0,0,b'0','01','40','0','99',3,0,'9',0,0,0,0,0,0,'01',0,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,'ALTERAR',NULL,NULL,NULL,'2024-09-10 16:04:09',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1),(8,'II','CST 41',NULL,0,0,0,0,0,b'0','01','41','0','99',3,0,'9',0,0,0,0,0,0,'01',0,NULL,NULL,NULL,NULL,NULL,216,331,0,0,NULL,0.00000,0.00000,0.00000,NULL,'ALTERAR',NULL,NULL,NULL,'2024-09-10 16:04:22',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1),(9,'FF','CST 60',NULL,0,0,0,0,0,b'0','99','60','0','99',3,0,'9',0,0,0,0,0,0,'99',0,NULL,NULL,NULL,NULL,NULL,275,392,0,0,NULL,0.00000,0.00000,0.00000,NULL,NULL,NULL,NULL,NULL,'2024-09-10 16:04:58',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1),(10,'FF','CST 61',NULL,0,0,0,0,0,b'0','08','61','0','99',3,0,'9',0,0,0,0,0,0,'08',0,NULL,NULL,NULL,NULL,NULL,519,543,0,0,NULL,0.00000,0.00000,0.00000,NULL,NULL,NULL,NULL,NULL,'2024-09-10 16:05:08',NULL,NULL,NULL,'',9,0.00000,0.00000,0,0,1,0,NULL,1);
