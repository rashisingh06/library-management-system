-- Create a procedure to delete a book
CREATE OR REPLACE PROCEDURE delete_book(
    IN book_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM books
    WHERE book_id = book_id;
END;
$$;
