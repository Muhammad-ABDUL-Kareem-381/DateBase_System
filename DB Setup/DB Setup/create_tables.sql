
create table department (
    Deptno number(2),
    Dname varchar2(25) constraint dept_name_nn not null,
    constraint dept_pk primary key (Deptno)
);

create table student (
    rollno char(10),
    sname varchar2(25) constraint student_name_nn not null,
    dob date constraint dob_check check (dob > to_date('01-JAN-2000', 'DD-MON-YYYY')),
    deptno number(2),
    program char(10) constraint program_check check (upper(program) in ('BS(IT)', 'BS(CS)', 'BS(SE)')),
    batch char(7) constraint batch_start_check check (initcap(batch) like 'Fall%' or initcap(batch) like 'Spr%'),
    constraint student_pk primary key (rollno),
    constraint student_dept_fk foreign key (deptno) references department(deptno)
);

create table course (
    c_code char(6),
    c_title varchar2(25) constraint course_title_nn not null,
    cr_hrs number(2,1) constraint credit_hours_check check (cr_hrs in (0.5, 1, 2, 3, 4)),
    domain varchar2(25) constraint domain_nn not null,
    constraint course_pk primary key (c_code)
);

CREATE TABLE class (
    Class_Code CHAR(6) PRIMARY KEY,
    C_code CHAR(6),
    T_code CHAR(8) NOT NULL,
    Semester Varchar(7) CHECK (initcap(Semester) like 'Fall-%' or initcap(Semester) like 'Spr-%'),
    Start_date DATE NOT NULL,
    FOREIGN KEY (C_code) REFERENCES course(C_code)
);

CREATE TABLE RESULT (
    RollNo CHAR(10),
    C_Code CHAR(6),
    Sessionals NUMBER(2) CHECK (Sessionals BETWEEN 0 AND 25),
    Mid_Marks NUMBER(2) CHECK (Mid_Marks BETWEEN 0 AND 35),
    Final_Marks NUMBER(2) CHECK (Final_Marks BETWEEN 0 AND 40),
    PRIMARY KEY (RollNo, C_Code),
    FOREIGN KEY (RollNo) REFERENCES STUDENT (RollNo),
    FOREIGN KEY (C_Code) REFERENCES COURSE (C_Code)
);

CREATE TABLE SESSIONALS (
    Class_ID CHAR(6) NOT NULL,
    S_Desc VARCHAR2(15) NOT NULL,
    S_Category VARCHAR2(10) NOT NULL,
    Max_Marks NUMBER(2) NOT NULL,
    PRIMARY KEY (Class_ID, S_Desc),
    FOREIGN KEY (Class_ID) REFERENCES CLASS(Class_Code)
);

CREATE TABLE CLASS_ENROLLMENT (
    Class_code CHAR(6) NOT NULL,
    RollNo CHAR(10) NOT NULL,
    Enrol_Date DATE,
    PRIMARY KEY (Class_code, RollNo),
    FOREIGN KEY (Class_code) REFERENCES CLASS(Class_Code),
    FOREIGN KEY (RollNo) REFERENCES STUDENT(RollNo)
);
 
 CREATE TABLE CLASS_ATTENDANCE (
    Class_code CHAR(6) NOT NULL,
    RollNo CHAR(10) NOT NULL,
    Att_Date DATE DEFAULT SYSDATE,
    Att_Status CHAR(1) DEFAULT 'P' CHECK (Upper(Att_Status) IN ('P', 'A')),
    PRIMARY KEY (Class_code, RollNo, Att_Date),
    FOREIGN KEY (Class_code, RollNo) REFERENCES CLASS_ENROLLMENT(Class_code, RollNo)
);

CREATE TABLE SESSIONALS_RESULT (
    Class_CODE CHAR(6) NOT NULL,
    S_Desc VARCHAR2(15) NOT NULL,
    RollNo CHAR(10) NOT NULL,
    Obt_Marks NUMBER(4,2),
    PRIMARY KEY (Class_CODE, S_Desc, RollNo),
    FOREIGN KEY (Class_CODE, S_Desc) REFERENCES SESSIONALS(Class_ID, S_Desc),
    FOREIGN KEY (Class_CODE, RollNo) REFERENCES CLASS_ENROLLMENT(Class_code, RollNo)
);

