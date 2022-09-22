/* Program one and 2 Creating a table and insering 20 rows*/
Create Database Student;
use Student;
Create table tblParents (parent_id int Primary key, parents_name varchar(50), city varchar(20), age int, annual_income int, occupation varchar(50), email_id varchar(80));
Insert into tblParents values (1001, 'Raj', 'Mohali', 45, 2900000, 'Software engineer', 'N/A');
Insert into tblParents values (1002, 'Ashwin', 'Delhi', 48, 800000, 'Elecrtical engineer', 'N/A');
Insert into tblParents values (1003, 'Sham', 'Mumabi', 51, 2000000, 'Software engineer', 'N/A');
Insert into tblParents values (1004, 'Jatin', 'Banglore', 50, 500000, 'Software engineer', 'N/A');
Insert into tblParents values (1005, 'Rahul', 'Ahmedabad', 40, 490000, 'Software engineer', 'N/A');
Insert into tblParents values (1006, 'Ram', 'Ahmedabad', 49, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (1007, 'Preet', 'Mohali', 45, 900000, 'Software engineer', 'N/A');
Insert into tblParents values (1008, 'Hero', 'Delhi', 42, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (1009, 'Hera', 'Chennai', 43, 209000, 'Software engineer', 'N/A');
Insert into tblParents values (1010, 'Raju', 'Delhi', 45, 209000, 'Software engineer', 'N/A');
Insert into tblParents values (2001, 'Raj', 'Mohali', 45, 329000, 'Software engineer', 'N/A');
Insert into tblParents values (2002, 'Raj', 'Mumabi', 45, 702000, 'Software engineer', 'N/A');
Insert into tblParents values (2003, 'Raj', 'Mohali', 45, 840000, 'Software engineer', 'N/A');
Insert into tblParents values (2004, 'Raj', 'Mohali', 46, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (2005, 'Arash', 'Mohali', 45, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (2006, 'Ashu', 'Mohali', 48, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (2007, 'Esha', 'Mumabi', 45, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (2008, 'Kajal', 'Ahmedabad', 44, 290000, 'Software engineer', 'N/A');
Insert into tblParents values (2009, 'Kira', 'Delhi', 45, 800000, 'Software engineer', 'N/A');
Insert into tblParents values (2010, 'Ravinder', 'Ahmedabad', 53, 800000, 'Software engineer', 'N/A');
Select * from tblParents;

/* Program 3 count salary*/
Select COUNT(annual_income) from tblParents where annual_income >600000;

/*Program 4 Check parents city*/
Select * from tblParents where city IN ('Delhi','Ahmedabad', 'Mumabi','Banglore','Chennai');

/*Program 5 salary less than 5 lakhs or age more than 45*/
Select * from tblParents where annual_income <500000 or age >45;

/* Program6 with foreign key*/
Create table student (parent_id int, student_name varchar(50), maths_marks int, science_marks int, foreign key (parent_id) references tblParents(parent_id));
Insert into student values (1001, 'Sow', 55, 74);
Insert into student values (2002, 'Row', 76, 84);
Insert into student values (2005, 'Powth', 63, 44);
Insert into student values (2010, 'Parth', 90, 74);
Insert into student values (1005, 'Paras', 40, 64);
Insert into student values (1004, 'Pinku', 54, 73);
Insert into student values (1003, 'Peter', 75, 95);
Insert into student values (2002, 'Pinki', 85, 96);
Insert into student values (1008, 'Puppy', 58, 58);
Select * from student;
