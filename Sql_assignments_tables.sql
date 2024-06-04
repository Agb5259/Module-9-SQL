--Create Table for Departments
CREATE TABLE "Departments" (
    "dept_no" CHAR(4)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
    PRIMARY KEY (dept_no)
);
--Display Table for Departments
Select * from public."Departments"

--Create Table for Departments emp
CREATE TABLE "Dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" CHAR(4)   NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES "Employees" (emp_no)
);

--Display Table for Departments emp
Select * from public."Dept_emp"
	
--Create Table for Departments manager
CREATE TABLE "Dept_manager" (
    "dept_no" CHAR(4)   NOT NULL,
    "emp_no" INT   NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES "Employees" (emp_no)
);

--Display Table for Departments manager
Select * from public."Dept_manager"

--Create Table for Employees
CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "emp_title" VARCHAR(50)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "sex" CHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
     PRIMARY KEY (emp_no, emp_title)
);

--Display Table for Employees
Select * from public."Employees"

--Create Table for Salaries
CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

--Display Table for Salaries
Select * from public."Salaries"


--Create Table for Titles
CREATE TABLE "Titles" (
    "title_id" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
    PRIMARY KEY (title_id)
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "Titles" ("title_id");

--Display Table for Titles
Select * from public."Titles

--Display FOREIGN KEY constraints to employees table for employee_title_id
ALTER TABLE Employees 
ADD FOREIGN KEY(emp_title_id) REFERENCES Titles (title_id);