INSERT INTO books (title, author, year) 
SELECT 
    'Book Title Vol. ' || i AS title,
    'Author Name ' || ((i % 15) + 1) AS author, 
    1950 + (i % 75) AS year                   
FROM generate_series(1, 100) AS i;

INSERT INTO students (name, email, birth_date)
SELECT 
    'Student_' || i AS name,
    'student_' || i || '@university.edu' AS email,
    '2000-01-01'::DATE + (floor(random() * 2500)::INT) AS birth_date -- floor - округление
FROM generate_series(1, 100) AS i;

INSERT INTO student_books (student_name, book_title)
SELECT
    A.name,
    B.title
FROM students AS A
CROSS JOIN books AS B

UPDATE student_books
SET readed = true
WHERE random() > 0.5;