CREATE TABLE  students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    birth_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    year INT NOT NULL
);

CREATE TABLE student_books (
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    book_title VARCHAR(200),
    readed BOOLEAN DEFAULT false
);