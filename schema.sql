CREATE TABLE employees(
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(16) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    gender VARCHAR(1),
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);
create table salary (
	emp_no INT NOT NULL,
	salary int not null,
	from_date date not null,
	to_date date not null,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)	
);
create table departments(
	dept_no int not null,
	dept_name varchar(30),
	PRIMARY KEY (dept_no),
	unique (dept_name)
);
create table titles(
	emp_no INT NOT NULL,
	title varchar(30),
	from_date date not null,
	to_date date,
	foreign key(emp_no) references employees (emp_no),
	primary key(emp_no)
)
create table dept_manager(
	dept_no int not null,
	emp_no INT NOT NULL,
	from_date date not null,
	to_date date,
	foreign key(emp_no) references employees (emp_no),
	foreign key(dept_no) references departments (dept_no),
	primary key(emp_no)
);
create table dept_emp(
	emp_no INT NOT NULL,
	dept_no int not null,
	from_date date not null,
	to_date date,
	primary key(emp_no,dept_no),
	foreign key(emp_no) references employees (emp_no),
	foreign key(dept_no) references departments (dept_no)
);
