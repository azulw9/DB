-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 ;
USE `library` ;

-- -----------------------------------------------------
-- Table `library`.`genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`genre` (
  `id` INT NOT NULL,
  `genre_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`books` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `publish_year` DECIMAL(10,0) NULL,
  `genre_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_books_genre_idx` (`genre_id` ASC),
  CONSTRAINT `fk_books_genre`
    FOREIGN KEY (`genre_id`)
    REFERENCES `library`.`genre` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`authors` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `birth_date` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`readers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`readers` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `birth_date` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`libraries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`libraries` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`authors_books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`authors_books` (
  `authors_id` INT NOT NULL,
  `books_id` INT NOT NULL,
  INDEX `fk_authors_books_authors1_idx` (`authors_id` ASC),
  INDEX `fk_authors_books_books1_idx` (`books_id` ASC),
  PRIMARY KEY (`authors_id`, `books_id`),
  CONSTRAINT `fk_authors_books_authors1`
    FOREIGN KEY (`authors_id`)
    REFERENCES `library`.`authors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_authors_books_books1`
    FOREIGN KEY (`books_id`)
    REFERENCES `library`.`books` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`books_in_lib`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`books_in_lib` (
  `books_id` INT NOT NULL,
  `libraries_id` INT NOT NULL,
  `amount` INT NULL,
  INDEX `fk_books_in_lib_books1_idx` (`books_id` ASC),
  INDEX `fk_books_in_lib_libraries1_idx` (`libraries_id` ASC),
  PRIMARY KEY (`books_id`, `libraries_id`),
  CONSTRAINT `fk_books_in_lib_books1`
    FOREIGN KEY (`books_id`)
    REFERENCES `library`.`books` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_books_in_lib_libraries1`
    FOREIGN KEY (`libraries_id`)
    REFERENCES `library`.`libraries` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`library_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`library_card` (
  `id` INT NOT NULL,
  `reader_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  `library_id` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `finish_date` DATE NOT NULL,
  `return` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_library_card_readers1_idx` (`reader_id` ASC),
  INDEX `fk_library_card_books_in_lib1_idx` (`book_id` ASC, `library_id` ASC),
  CONSTRAINT `fk_library_card_readers1`
    FOREIGN KEY (`reader_id`)
    REFERENCES `library`.`readers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_library_card_books_in_lib1`
    FOREIGN KEY (`book_id` , `library_id`)
    REFERENCES `library`.`books_in_lib` (`books_id` , `libraries_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
