-- обновить запись о выдаче книги после того, как книгу вернули, т.е. изменить метку возврата с 0 на 1 : return=0->1
UPDATE library.library_card 
SET library_card.return = 1 
WHERE reader_id= 
		(
			SELECT readers.id 
			FROM readers 
			WHERE readers.last_name = "Yellow"
            AND readers.first_name = "Victor"
        )
AND
	book_id=
    (
		SELECT books.id
        FROM books
        WHERE books.title="JUNGLE BOOK"
	)
AND
	library_id=
	(
		SELECT libraries.id
		FROM libraries
		WHERE libraries.name="Central library"
	);