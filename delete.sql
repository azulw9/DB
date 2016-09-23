-- удалить запись о выдаче книги по шифру записи
DELETE FROM `library`.`library_card` WHERE `id`='8';

-- удалить запись о выдаче книги по Фамилии и имени читателя и Названию книги
DELETE FROM library.library_card 
WHERE reader_id= 
		(
			SELECT readers.id 
			FROM readers 
			WHERE readers.last_name = "Velychko"
			AND readers.first_name = "Nadiia"
        )
AND
	book_id=
    (
		SELECT books.id
        FROM books
        WHERE books.title="THE FIRM"
	);