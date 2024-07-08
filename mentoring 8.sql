-- tabel libraries
CREATE TABLE libraries (
    library_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    address TEXT,
    established_date DATE
);

-- tabel books
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    library_id INTEGER NOT NULL REFERENCES libraries(library_id),
    title VARCHAR NOT NULL,
    author VARCHAR,
    genre VARCHAR,
    publisher VARCHAR,
    publication_date DATE,
    language VARCHAR,
    isbn VARCHAR,
    quantity INTEGER NOT NULL CHECK (quantity >= 0)
);

--- function untuk memeriksa jumlah peminjaman
CREATE OR REPLACE FUNCTION check_max_loans()
RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT COUNT(*) FROM loans WHERE user_id = NEW.user_id AND return_date IS NULL) >= 2 THEN
        RAISE EXCEPTION 'User cannot borrow more than 2 books at a time';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- tabel users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR,
    email VARCHAR UNIQUE NOT NULL,
    password VARCHAR NOT NULL,
    registration_date DATE DEFAULT CURRENT_DATE
);

-- tabel loans
CREATE TABLE loans (
    loan_id SERIAL PRIMARY KEY,
    book_id INTEGER NOT NULL REFERENCES books(book_id),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    loan_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    CHECK (loan_date <= due_date),
    CHECK (loan_date <= COALESCE(return_date, due_date))
);



CREATE TRIGGER trigger_check_max_loans
BEFORE INSERT ON loans
FOR EACH ROW
EXECUTE FUNCTION check_max_loans();

-- tabel holds
CREATE TABLE holds (
    hold_id SERIAL PRIMARY KEY,
    book_id INTEGER NOT NULL REFERENCES books(book_id),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    hold_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    status VARCHAR NOT NULL CHECK (status IN ('active', 'released', 'borrowed'))
);



