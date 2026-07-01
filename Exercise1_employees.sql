-- Databricks notebook source
---1. SELECT Statement
Select *
From june_intake.exercises.exercise1_employees;

---2.SELECT DISTINCT Statement
Select Distinct(department)
From june_intake.exercises.exercise1_employees;

---3.ORDER BY Statement
Select first_name,
        last_name
From june_intake.exercises.exercise1_employees
Order by salary DESC;

---4.LIMIT Statement
Select first_name,
        last_name,
        salary
From june_intake.exercises.exercise1_employees
Order by salary DESC
LIMIT 5;

---5.WHERE Statement
Select first_name,
        last_name,
        department
From june_intake.exercises.exercise1_employees
WHERE department = 'IT';

---6.AND Statement
Select first_name,
        last_name,
        department,
        salary
From june_intake.exercises.exercise1_employees
WHERE department = 'Finance' AND salary > 58000;

---7.OR Statement
Select first_name,
        last_name,
        department
From june_intake.exercises.exercise1_employees
WHERE department = 'HR' OR department = 'Marketing';

---8.NOT Statement
Select first_name,
        last_name,
        department
From june_intake.exercises.exercise1_employees
WHERE department <> 'IT';

---9.IN Statement
Select first_name,
        last_name,
        department
From june_intake.exercises.exercise1_employees
WHERE department IN ('HR','IT','Finance');

---10.Combining Conditions
Select first_name,
        last_name,
        department,
        salary,
        city
From june_intake.exercises.exercise1_employees
WHERE department = 'IT' AND salary > 50000 AND city = 'New York';

---11.Combining WHERE, AND and Order BY
Select first_name,
        last_name,
        department,
        salary
From june_intake.exercises.exercise1_employees
WHERE department IN ('Finance','Marketing') AND salary > 52000
Order by salary DESC;

---12.Combining SELECT DISTINCT, WHERE, and IN
Select distinct (city)
From june_intake.exercises.exercise1_employees
WHERE department NOT IN ('IT','HR');

---13.Combining WHERE, NOT, AND, and ORDER BY
Select first_name,
        last_name
From june_intake.exercises.exercise1_employees
WHERE department NOT IN ('Finance') AND salary >50000
Order by hire_date ASC;

---14.Combining WHERE, OR, IN, and LIMIT
Select first_name,
        last_name
From june_intake.exercises.exercise1_employees
WHERE city NOT IN ('Chicago','Los Angeles') AND department IN ('IT','Marketing')
LIMIT 3;

