/*  перед каждой записью о выдаче книги мы проверяем есть ли эта книга в библиотеке, с которой мы выдаем ее
	от количества экземпляров данной книги в данной библиотеке мы отнимаем 
	число записей о выдаче данной книги с этой библиотеки с отметкой "не вернули", т.е. return = 0 */
delimiter $$
create trigger Check_amount_of_books before insert on library_card
for each row
BEGIN
DECLARE n INT default 0;
SET n = (
		SELECT books_in_lib.amount - COUNT(library_card.id) 
		FROM library_card JOIN books_in_lib ON (library_card.book_id = books_in_lib.books_id) 
		WHERE library_card.book_id = NEW.book_id AND library_card.library_id = NEW.library_id AND library_card.return=0
		);
IF(n <= 0) THEN
    SIGNAL sqlstate '45001' set message_text = "Error! number of books in store: 0";		
ELSE
    SIGNAL SQLSTATE '01000';
END IF;
END $$
delimiter ;