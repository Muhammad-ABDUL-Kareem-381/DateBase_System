insert into department (deptno, dname) values (1, 'Dept. of IT');
insert into department (deptno, dname) values (2, 'Dept. of CS');
insert into department (deptno, dname) values (3, 'Dept. of SE'); 

insert into student (rollno, sname, dob, deptno, program, batch) values ('BITF22M001', 'FARIHA RAZA', to_date('12-Apr-2003', 'DD-MON-YYYY'), 1, 'BS(IT)', 'Fall-22');
insert into student (rollno, sname, dob, deptno, program, batch) values ('BCSF22M033', 'MAJEED HASSAN', to_date('10-Jan-2002', 'DD-MON-YYYY'), 2, 'BS(CS)', 'Fall-22');
insert into student (rollno, sname, dob, deptno, program, batch) values ('BSEF22M022', 'BILAL OMER', to_date('31-Oct-2004', 'DD-MON-YYYY'), 3, 'BS(SE)', 'Spr-22');
insert into student (rollno, sname, dob, deptno, program, batch) values ('BITF22M002', 'RAZA SUBHAN', to_date('13-Feb-2003', 'DD-MON-YYYY'), 1, 'BS(IT)', 'Fall-22');
insert into student (rollno, sname, dob, deptno, program, batch) values ('BCSF22M034', 'HASSAN ALI', to_date('10-Mar-2002', 'DD-MON-YYYY'), 2, 'BS(CS)', 'Fall-22');
insert into student (rollno, sname, dob, deptno, program, batch) values ('BSEF22M023', 'HASEEB ARIF', to_date('31-Dec-2004', 'DD-MON-YYYY'), 3, 'BS(SE)', 'Spr-22');



INSERT INTO COURSE VALUES('GE-163','Islamic Studies',2,'General Education');
INSERT INTO COURSE VALUES('CC-212','Software Engineering',3,'Computing');
INSERT INTO COURSE VALUES('CC-215','Database System',3,'Computing');
INSERT INTO COURSE VALUES('CC-211','OOP',3,'Computing');
INSERT INTO COURSE VALUES('CC-213','DSA',3,'Computing');


INSERT INTO class (Class_Code, C_code, T_code, Semester, Start_date) VALUES
('CL-006', 'GE-163', 'T006', 'Fall-1', to_date('01-Sep-2024', 'DD-MON-YYYY'));

INSERT INTO class (Class_Code, C_code, T_code, Semester, Start_date) VALUES
('CL-005', 'CC-212', 'T005', 'Fall-3', to_date('01-Sep-2025', 'DD-MON-YYYY'));

INSERT INTO class (Class_Code, C_code, T_code, Semester, Start_date) VALUES
('CL-004', 'CC-215', 'T004', 'Fall-2', to_date('01-Feb-2025', 'DD-MON-YYYY'));


INSERT INTO class (Class_Code, C_code, T_code, Semester, Start_date) VALUES
('CL-002', 'CC-211', 'T002', 'Spr-2', to_date('01-Sep-2024', 'DD-MON-YYYY'));
INSERT INTO class (Class_Code, C_code, T_code, Semester, Start_date) VALUES
('CL-001', 'CC-213', 'T001', 'Spr-1', to_date('01-Sep-2024', 'DD-MON-YYYY'));


INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BITF22M001', 'GE-163', 8, 23, 32);

INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BITF22M001', 'CC-212', 19, 29, 40);

INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BSEF22M022', 'CC-211', 14, 27, 32);

INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BSEF22M022', 'CC-213', 10, 20, 25);

INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BCSF22M033', 'CC-211', 8, 15, 20);

INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BCSF22M033', 'CC-213', 12, 24, 30);

INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BITF22M002', 'CC-213', 23, 25, 30);


INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BCSF22M034', 'CC-213', 23, 25, 30);


INSERT INTO RESULT (RollNo, C_Code, Sessionals, Mid_Marks, Final_Marks) VALUES
('BSEF22M023', 'CC-213', 23, 25, 30);


INSERT INTO SESSIONALS (Class_ID, S_Desc, S_Category, Max_Marks) VALUES ('CL-006', 'Quiz1', 'Quiz', 10);
INSERT INTO SESSIONALS (Class_ID, S_Desc, S_Category, Max_Marks) VALUES ('CL-005', 'Quiz2', 'Quiz', 10);
INSERT INTO SESSIONALS (Class_ID, S_Desc, S_Category, Max_Marks) VALUES ('CL-004', 'Assignment1', 'Assignment', 20);
INSERT INTO SESSIONALS (Class_ID, S_Desc, S_Category, Max_Marks) VALUES ('CL-002', 'Assignment2', 'Assignment', 20);
INSERT INTO SESSIONALS (Class_ID, S_Desc, S_Category, Max_Marks) VALUES ('CL-001', 'Project1', 'Project', 30);


INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-006', 'BITF22M001', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-006', 'BITF22M002', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-005', 'BCSF22M033', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-004', 'BSEF22M022', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-001', 'BSEF22M022', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-002', 'BCSF22M034', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-002', 'BSEF22M023', to_date('01-Aug-2024', 'DD-MON-YYYY'));
INSERT INTO CLASS_ENROLLMENT (Class_code, RollNo, Enrol_Date) VALUES ('CL-005', 'BITF22M002', to_date('01-Aug-2024', 'DD-MON-YYYY'));


INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-006', 'BITF22M001', SYSDATE, 'P');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-006', 'BITF22M002', SYSDATE, 'P');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-005', 'BCSF22M033', SYSDATE, 'P');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-004', 'BSEF22M022', SYSDATE, 'A');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-001', 'BITF22M001', SYSDATE, 'P');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-001', 'BSEF22M022', SYSDATE, 'P');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-002', 'BCSF22M034', SYSDATE, 'P');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-002', 'BSEF22M023', SYSDATE, 'A');
INSERT INTO CLASS_ATTENDANCE (Class_code, RollNo, Att_Date, Att_Status) VALUES ('CL-005', 'BITF22M002', SYSDATE, 'P');





INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-006', 'Quiz1', 'BITF22M001', 9.50);
INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-006', 'Quiz1', 'BITF22M002', 8.75);
INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-005', 'Quiz2', 'BCSF22M033', 7.00);

INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-004', 'Assignment1', 'BSEF22M022', 18.00);

INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-002', 'Assignment2', 'BCSF22M034', 16.50);
INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-002', 'Assignment2', 'BSEF22M023', 17.75);

INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-001', 'Project1', 'BITF22M001', 28.00);
INSERT INTO SESSIONALS_RESULT (Class_CODE, S_Desc, RollNo, Obt_Marks) VALUES ('CL-001', 'Project1', 'BSEF22M022', 25.50);
