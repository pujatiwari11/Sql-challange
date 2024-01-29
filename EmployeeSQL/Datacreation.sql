

CREATE TABLE "departments" (
    "dept_no" varchar(4)   NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR(50)   NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR  NOT NULL PRIMARY KEY,
    title VARCHAR   NOT NULL
     );
CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL PRIMARY KEY,
    "emp_title" VARCHAR(5)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL
--   foreign key (emp_title) references titles(title)
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
	FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
   FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(4)   NOT NULL,
   FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
   FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no") 
);







