🔹 1. Scalar Subquery in SELECT

-- Show each book and total number of books by that book's author
SELECT title,
       (SELECT COUNT(*) FROM Book b2 WHERE b2.author_id = b1.author_id) AS books_by_same_author
FROM Book b1;
🔹 2. Subquery in WHERE with IN

-- Show books written by authors who have more than 1 book
SELECT * FROM Book
WHERE author_id IN (
    SELECT author_id FROM Book
    GROUP BY author_id
    HAVING COUNT(*) > 1
);
🔹 3. Subquery with EXISTS

-- Show authors who have at least one book in the database
SELECT * FROM Author a
WHERE EXISTS (
    SELECT 1 FROM Book b WHERE b.author_id = a.author_id
);
🔹 4. Correlated Subquery

-- Show students who borrowed more than 1 book
SELECT * FROM Student s
WHERE (
    SELECT COUNT(*) FROM Loan l WHERE l.student_id = s.student_id
) > 1;
🔹 5. Subquery in FROM (Derived Table)

-- Show total number of loans grouped by student
SELECT student_id, total_loans
FROM (
    SELECT student_id, COUNT(*) AS total_loans
    FROM Loan
    GROUP BY student_id
) AS loan_summary;
🔹 6. Subquery with =

-- Show book(s) with maximum number of available copies
SELECT * FROM Book
WHERE available_copies = (
    SELECT MAX(available_copies) FROM Book
);
🔹 7. Subquery with NOT IN

-- Show students who have never taken any books
SELECT * FROM Student
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM Loan
);
🔹 8. Subquery inside SELECT for comparison

-- Compare each student's borrow count with average borrow count
SELECT s.name,
       (SELECT COUNT(*) FROM Loan l WHERE l.student_id = s.student_id) AS total_loans,
       (SELECT AVG(counts) FROM (
           SELECT COUNT(*) AS counts FROM Loan GROUP BY student_id
       ) AS avg_subquery) AS avg_loans_per_student
FROM Student s;