# sql-challenge
Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.
Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBD Links to an external site..
Data Engineering

Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
Remember to specify the data types, primary keys, foreign keys, and other constraints.
For the primary keys, verify that the column is unique. Otherwise, create a composite key Links to an external site., which takes two primary keys to uniquely identify a row.
Be sure to create the tables in the correct order to handle the foreign keys.
Import each CSV file into its corresponding SQL table.
HINT
Data Analysis

List the employee number, last name, first name, sex, and salary of each employee.
List the first name, last name, and hire date for the employees who were hired in 1986.
List the manager of each department along with their department number, department name, employee number, last name, and first name.
List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
List each employee in the Sales department, including their employee number, last name, and first name.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

inside the git folder there is the read me, the git ignore and a folder called employee sql which contains the csv files, the png for the relationship tables, the quick db table creation or table schema and the querie schema which are saved as .sql. the hardest was importing the csv files after creating the tables as you have to create them in order then import each corresponding csv then add the foregin keys. i had to restart this assignment and rewatch a few videos before i learned this trick. anyways here it is in all its glory. 
