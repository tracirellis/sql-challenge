-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0k8JGA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

--part I- data engineering

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "Emp_no" INT   NOT NULL,
    "Dept_no" VARCHAR   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL
);

CREATE TABLE "employees" (
    "Emp_no" INT   NOT NULL,
	"Emp_title_id" VARCHAR NOT NULL, 
    "Birth_date" DATE   NOT NULL,
    "First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "SEX" VARCHAR   NOT NULL,
    "Hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL

);

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL
  
);

--PART II- Data Modeling- with foreign keys

ALTER TABLE "public"."dept_emp"
ADD CONSTRAINT "fk_dept_emp_Emp_no"
FOREIGN KEY ("Emp_no")
REFERENCES "public"."employees" ("Emp_no");

ALTER TABLE "dept_emp" 
ADD CONSTRAINT "fk_dept_emp_Dept_no" 
FOREIGN KEY("Dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" 
ADD CONSTRAINT "fk_dept_manager_dept_no" 
FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" 
ADD CONSTRAINT "fk_dept_manager_emp_no" 
FOREIGN KEY("emp_no")
REFERENCES "employees" ("Emp_no");

ALTER TABLE "salaries" 
ADD CONSTRAINT "fk_salaries_emp_no" 
FOREIGN KEY("emp_no")
REFERENCES "employees" ("Emp_no");

ALTER TABLE "public"."titles"
ADD CONSTRAINT "uq_titles_title_id" UNIQUE ("title_id");

ALTER TABLE "public"."employees"
ADD CONSTRAINT "fk_employees_titles"
FOREIGN KEY ("Emp_title_id")
REFERENCES "public"."titles" ("title_id");



