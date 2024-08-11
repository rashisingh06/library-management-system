-- Create a procedure to update a book
CREATE OR REPLACE PROCEDURE update_book(
    IN book_id INT,
    IN book_title TEXT,
    IN book_author TEXT,
    IN published_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE books
    SET title = book_title,
        author = book_author,
        published_date = published_date
    WHERE book_id = book_id;
END;
$$;
