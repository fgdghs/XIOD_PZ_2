SELECT COUNT(*) FROM books;

SELECT COUNT(*) FROM students;

SELECT * FROM students
ORDER BY birth_date DESC; 

SELECT * FROM books
ORDER BY year DESC
LIMIT 1;

SELECT * FROM books
WHERE year = (SELECT MAX(year) FROM books);

SELECT * FROM student_books;

SELECT COUNT(*) FROM student_books;