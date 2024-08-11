-- Create a procedure to get a book by ID
CREATE OR REPLACE PROCEDURE get_book(
    IN book_id INT,
    OUT book_title TEXT,
    OUT book_author TEXT,
    OUT published_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT title, author, published_date
    INTO book_title, book_author, published_date
    FROM books
    WHERE book_id = book_id;
END;
$$;
