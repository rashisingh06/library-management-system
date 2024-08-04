CREATE OR REPLACE PROCEDURE add_book(
    IN book_title TEXT,
    IN book_author TEXT,
    IN published_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO books (title, author, published_date)
    VALUES (book_title, book_author, published_date);
END;
$$;
