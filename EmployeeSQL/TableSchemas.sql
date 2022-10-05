CREATE TABLE sql_schema.titles (
		TitleID text PRIMARY KEY,
		Title text
	);

CREATE TABLE sql_schema.employees (
    EmpNo int PRIMARY KEY,
	EmpTitleID text,
	BirthDate date,
	FirstName text,
	LastName text,
	Sex text,
	HireDate date,
	CONSTRAINT fk_emptitleid
      FOREIGN KEY(EmpTitleID) 
	  REFERENCES sql_schema.titles(titleid)
);

CREATE TABLE sql_schema.departments (
	DeptNo text PRIMARY KEY,
	DeptName text
	);

CREATE TABLE sql_schema.dept_emp (
	EmpNo int,
	DeptNo text,
	CONSTRAINT fk_empno
	FOREIGN KEY(Empno) 
	REFERENCES sql_schema.employees(empno),
	CONSTRAINT fk_deptno
	FOREIGN KEY(deptno) 
	REFERENCES sql_schema.departments(deptno)
);

CREATE TABLE sql_schema.salaries (
	EmpNo int PRIMARY KEY,
	Salary int,
	CONSTRAINT fk_empno
	FOREIGN KEY(Empno) 
	REFERENCES sql_schema.employees(empno)
	);

CREATE TABLE sql_schema.dept_managers (
	DeptNo text,
	EmpNo int,
	CONSTRAINT fk_deptno
	FOREIGN KEY(deptno) 
	REFERENCES sql_schema.departments(deptno),
	CONSTRAINT fk_empno
	FOREIGN KEY(Empno) 
	REFERENCES sql_schema.employees(empno)
	);


