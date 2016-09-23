-- вывести все книги определенного автора
SELECT books.title, books.publish_year
FROM books
JOIN authors_books ON (books.id = authors_books.books_id)
JOIN authors ON (authors_books.authors_id=authors.id)
WHERE authors.last_name = 'Meyer';

-- вывести авторов опеределенной книги
SELECT authors.first_name as Authors_of, authors.last_name as THE_Firm
FROM authors
JOIN authors_books ON (authors.id=authors_books.authors_id)
JOIN books ON (authors_books.books_id=books.id)
WHERE books.title="THE FIRM";

-- вывести книгу по автору и названию, если такой нет, то не выведет ничего
SELECT books.title, books.publish_year, authors.first_name, authors.last_name
FROM books
JOIN authors_books ON (books.id = authors_books.books_id)
JOIN authors ON (authors_books.authors_id=authors.id)
WHERE authors.last_name = "Rudyard"
AND books.title="JUNGLE BOOK";

-- вывести в каких библиотеках сколько экземпл€ров книги осталось
SELECT  books.id as b_id, libraries.id as lib_id, authors.last_name, authors.first_name, books.title, libraries.name,  books_in_lib.amount -
	(
	SELECT COUNT(library_card.id) 
	FROM library_card 
	WHERE library_card.book_id = b_id 
	AND library_card.library_id = lib_id 
	AND library_card.return=0) as books_in_stock
FROM libraries
JOIN books_in_lib ON (libraries.id = books_in_lib.libraries_id)
JOIN books ON (books_in_lib.books_id=books.id)
JOIN authors_books ON (books.id = authors_books.books_id)
JOIN authors ON (authors_books.authors_id=authors.id)
WHERE books.title="JUNGLE BOOK";

-- вывести ‘»ќ должников и какую книгу в какую библиотеку они должны
SELECT  r.last_name, r.first_name, b.title as Book, l.name Library
FROM readers r
JOIN library_card lib_c ON (r.id = lib_c.reader_id)
JOIN books b ON (lib_c.book_id = b.id)
JOIN books_in_lib bl ON (b.id = bl.books_id)
JOIN libraries l ON (bl.libraries_id = l.id);