-- ==============================
-- Online Book Store SQL Script
-- ==============================

-- 1. Create Database
CREATE DATABASE IF NOT EXISTS online_book_store;
USE online_book_store;

-- 2. Create Books Table
CREATE TABLE IF NOT EXISTS books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(150) NOT NULL,
    quantity INT NOT NULL DEFAULT 0
);

-- 3. Insert Sample Books
INSERT INTO books (title, author, quantity) VALUES
('Clean Code', 'Robert C. Martin', 5),
('Effective Java', 'Joshua Bloch', 3),
('Head First Java', 'Kathy Sierra', 7);

-- 4. Fetch All Books (List Books)
SELECT id, title, author, quantity
FROM books;

-- 5. Fetch Book by ID (Edit Book)
SELECT id, title, author, quantity
FROM books
WHERE id = ?;

-- 6. Update Book Details
UPDATE books
SET title = ?, author = ?, quantity = ?
WHERE id = ?;

-- 7. Reduce Book Quantity
UPDATE books
SET quantity = quantity - 1
WHERE id = ?;

-- 8. Delete Book When Quantity Becomes Zero
DELETE FROM books
WHERE quantity <= 0;

-- ==============================
-- End of Script
-- ==============================
