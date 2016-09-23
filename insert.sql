-- заполняем таблицу авторов
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('4', 'Melissa', 'Nichols', '1978-12-23')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('3', 'Stephanie', 'Meyer', '1975-10-04')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('2', 'Lorelei', 'Sutton', '1978-04-30')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('1', 'Nidhi', 'Agrawal', '1980-04-10')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('4', 'Melissa', 'Nichols', '1978-12-23')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('3', 'Stephanie', 'Meyer', '1975-10-04')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('2', 'Lorelei', 'Sutton', '1978-02-30')
INSERT INTO `library`.`authors` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('1', 'Nidhi', 'Agrawal', '1980-04-10')

-- заполняем таблицу читателей
INSERT INTO `library`.`readers` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('2', 'Nadiia', 'Velychko', '1975-09-22')
INSERT INTO `library`.`readers` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('1', 'Peter', 'Tarkut', '1995-08-12')
INSERT INTO `library`.`readers` (`id`, `first_name`, `last_name`, `birth_date`) VALUES ('1', 'Peter', 'Tarkut', '12.09.1995')

-- заполняем таблицу книг
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('1', 'VOODOO ISLAND', '2010', '1');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('2', 'THE FIRM', '1996', '3');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('3', 'HAMPTON HOUSE', '1980', '10');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('4', 'TEARS OF THE GIRAFFE', '2006', '2');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('5', 'THE TENANT OF WILDFELL HALL', '1960', '3');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('6', 'THE LADY IN THE LAKE', '1860', '2');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('7', 'WOMEN IN BUSINESS', '2012', '4');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('8', 'JUNGLE BOOK', '1890', '5');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('9', ' FORGET TO REMEMBER', '2000', '6');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('10', 'THE MURDER OF ROGER ACKROYD', '1675', '9');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('11', 'THEY CAME TO BAGHDAD', '1989', '7');
INSERT INTO `library`.`books` (`id`, `title`, `publish_year`, `genre_id`) VALUES ('12', 'THE ENEMY', '1999', '8');

-- заполняем соединительную таблицу авторы и их книги
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('1', '1');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('1', '2');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('1', '6');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('3', '1');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('3', '2');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('2', '5');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('2', '11');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('2', '12');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('3', '7');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('4', '9');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('2', '3');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('4', '4');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('6', '8');
INSERT INTO `library`.`authors_books` (`authors_id`, `books_id`) VALUES ('5', '11');

-- заполняем таблицу библиотеки
INSERT INTO `library`.`libraries` (`id`, `name`, `adress`) VALUES ('1', 'Shevchenko library', 'Heroiv Dnipra 47');
INSERT INTO `library`.`libraries` (`id`, `name`, `adress`) VALUES ('2', 'School library', 'Obolonskiy 12');
INSERT INTO `library`.`libraries` (`id`, `name`, `adress`) VALUES ('3', 'Central library', 'Lesi Ukrainkyy 45/5');
INSERT INTO `library`.`libraries` (`id`, `name`, `adress`) VALUES ('4', 'Vernadskyi library', 'Kuchera 13/1');

-- заполняем соединительную таблицу книги в библиотеках
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('1', '3', '1');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('2', '3', '1');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('3', '3', '3');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('8', '3', '1');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('8', '2', '2');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('4', '1', '1');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('5', '1', '1');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('10', '4', '2');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('11', '4', '2');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('9', '4', '1');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('4', '2', '2');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('7', '3', '4');
INSERT INTO `library`.`books_in_lib` (`books_id`, `libraries_id`, `amount`) VALUES ('7', '4', '1');

-- заполняем таблицу записей о выдаче книг
INSERT INTO `library`.`library_card` (`id`, `reader_id`, `book_id`, `library_id`, `start_date`, `finish_date`, `return`) VALUES ('1', '1', '1', '3', '2016-02-11', '2016-03-12', '0');
INSERT INTO `library`.`library_card` (`id`, `reader_id`, `book_id`, `library_id`, `start_date`, `finish_date`, `return`) VALUES ('2', '2', '2', '3', '2016-08-02', '2016-09-03', '0');
INSERT INTO `library`.`library_card` (`id`, `reader_id`, `book_id`, `library_id`, `start_date`, `finish_date`, `return`) VALUES ('3', '3', '3', '3', '2016-08-02', '2016-09-03', '1');
INSERT INTO `library`.`library_card` (`id`, `reader_id`, `book_id`, `library_id`, `start_date`, `finish_date`, `return`) VALUES ('4', '4', '4', '1', '2016-09-02', '2016-10-03', '0');
