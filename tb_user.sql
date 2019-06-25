-- -----------------------------------------------------
-- Tabela `WDGESTOR`.`WD_USER` - identificador da tabela - US
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WDGESTOR`.`WD_USER` (
  `CO_SEQ_ID_US` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador da Tabela, chave primária.',
  `NO_NOME_US` VARCHAR(100) NULL COMMENT 'Nome do usuário',
  `NO_EMAIL_US` VARCHAR(100) NULL COMMENT 'Email do usuário',
  `DS_SENHA_US` VARCHAR(100) NULL COMMENT 'Senha do usário',
  `IM_FOTO_US` LONGTEXT NULL COMMENT 'Foto do usuário',
  `DT_DATA_NAS_US` DATE NULL COMMENT 'Data de nascimento do usuário',
  `ST_STATUS_US` INT NULL COMMENT 'Status 0 - inativo ou 1 - ativo',
  `CO_ID_US` INT NOT NULL COMMENT 'Relacionamento com a tabela grupo do usuário - CO_SEQ_ID_GUS',
  PRIMARY KEY (`CO_SEQ_ID_US`, `CO_ID_US`),
  INDEX `fk_CO_SEQ_ID_GUS_idx` (`CO_ID_US` ASC),
  CONSTRAINT `fk_CO_SEQ_ID_GUS` 
    FOREIGN KEY (`CO_ID_US`)
    REFERENCES `WDGESTOR`.`WD_G_USER` (`CO_SEQ_ID_GUS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;
