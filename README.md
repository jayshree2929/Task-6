**# SQL Internship - Task 6

## 📌 Topic: Subqueries and Nested Queries

This task focuses on using **subqueries (nested queries)** in various SQL clauses including `SELECT`, `WHERE`, and `FROM`. The goal was to write advanced SQL queries that use logic embedded within other queries to filter, calculate, or compare data more efficiently.

---

## ✅ What I Did

1. Practiced writing **scalar**, **correlated**, and **derived** subqueries.
2. Used subqueries in:
   - `SELECT` clause (for on-the-fly calculations)
   - `WHERE` clause (to filter using `IN`, `NOT IN`, `EXISTS`, and `=`)
   - `FROM` clause (as derived/temporary tables)
3. Applied subqueries to real scenarios in the `LibraryDB` database, such as:
   - Finding students who borrowed more than average
   - Getting books written by authors with multiple entries
   - Displaying books with the highest availability

---

## 🧠 Concepts Practiced

| Concept                  | Description                                                           |
|--------------------------|-----------------------------------------------------------------------|
| `Scalar Subquery`        | Returns a single value used in `SELECT` or `WHERE`                   |
| `Correlated Subquery`    | References a column from outer query and runs for each row           |
| `IN / NOT IN`            | Filters data based on set returned by a subquery                     |
| `EXISTS / NOT EXISTS`    | Checks existence of rows matching subquery condition                 |
| `Derived Table`          | Subquery inside `FROM`, treated as a temporary table                 |
| `Subquery with =`        | Filters where value equals result of subquery                        |
| `Subquery in SELECT`     | Used for comparisons or extra calculated fields                      |
