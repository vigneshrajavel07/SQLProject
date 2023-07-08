CREATE DATABASE BooksDB;
USE BooksDB;
CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(100) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  publication_year INT NOT NULL,
  price DECIMAL(8, 2) NOT NULL);
INSERT INTO Books (title, author, genre, publication_year, price)
VALUES
  ('Book 1', 'Author 1', 'Fiction', 2020, 19.99),
  ('Book 2', 'Author 2', 'Fantasy', 2018, 14.99),
  ('Book 3', 'Author 3', 'Mystery', 2021, 24.99),
  ('Book 4', 'Author 4', 'Sci-Fi', 2019, 17.99);
SELECT * FROM Books;
SELECT * FROM Books WHERE title = 'Book 1';
UPDATE Books SET price = 29.99 WHERE title = 'Book 2';
DELETE FROM Books WHERE title = 'Book 3';
INSERT INTO Books (title, author, genre, publication_year, price)
VALUES('Book 5', 'Author 5', 'Thriller', 2022, 21.99);
SELECT AVG(price) AS average_price FROM Books;
CREATE TABLE Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(100) NOT NULL);
ALTER TABLE Books ADD COLUMN author_id INT;

ALTER TABLE Books ADD FOREIGN KEY (author_id) REFERENCES Authors(author_id);
INSERT INTO Authors (author_name)
VALUES
  ('Author 1'),
  ('Author 2'),
  ('Author 3'),
  ('Author 4'),
  ('Author 5');
SELECT Books.title, Authors.author_name
FROM Books
JOIN Authors ON Books.author_id = Authors.author_id;




