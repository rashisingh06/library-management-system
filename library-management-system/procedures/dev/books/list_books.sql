-- Create a procedure to list all books
CREATE OR REPLACE PROCEDURE list_books()
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT * FROM books;
END;
$$;
