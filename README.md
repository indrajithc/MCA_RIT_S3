
PROGRAM NO:1

Create a bank database according to the following specification

Account(accno,cid,bid,amount,adate)

Customer(cid,cname,city)

Borrower(loanno,cid,bid,amount)

Branch(bid,bname,city) and give SQL query for solving following problems ?Also drawE-R diagram?

    1. Give names of customers living in kochi city?
    2. Give name of branches at mg road? 
    3. Give names of depositors have been account at mg road? 
    4. Give names of customers having loan and living in city Calicut?
    5. List the customers having deposit in the branch where average deposit in the branch is more than 32000?
    6. List all the branches having sum of deposit more than 5000?
    7. List the branch having sum of deposit more than 32000 and located in city Trivandrum?
    8. List the name of customers having maximum deposit?
    9. List the name of branch having largest no of depositors?
    10. List the name of customers having largest no of deposits?
    11. Give the names of cities in which maximum branches are allocated?
    12. Give name of branch where no of depositors more than 2?
    13. List all customers who are depositors but not borrowers?
    14. List customers who are depositors or borrowers and living in city kochi?
    15. List the amount of total loan?
    16. Give name of customers having highest deposit in branch where arun is having deposit?



PROGRAM NO:2

A student is described by unique roll no,name,degree,year,sex,department no and advisor. Departments have department no which is unique,name,hod and phone no.

A professor is described by employee id which is unique,name,sex,start year,department no,phone no. Department offers courses which is described by unique course id,name,min.credits,and offering department.

A student can enroll for a course which is described by roll no,course id,semester,year, and grade. Database also stores information about professors teaching for different courses which is described by employee id,course id,sem,year and class room.

Create a schema with required integrity constraints,Insert tuples into tables? Also draw the ER Diagram?
    1. Delete tuples from professor table with start year as 1992?
    2. Change phone no of all professors working in mca department to 0476-4567878?
    3. List the name of professors who joined after 1990 in alphabetic order?
    4. Obtain roll nos. of students who do not have phone nos?
    5. Obtain name of professors who have joined between 1990 and 2000?
    6. Obtain the roll no,name of all women students in mca department?
    7. Get the employee id,name and phone no of professors in the mca dept. who have joined after 2000?
    8. Get the roll no,name of students in the cse department along with their advisor name and phone no?
    9. Get the roll no,name of students whose gender is same as their advisors?
    10. Get the employee id and name of the senior most professors?
    11. Get the roll no and name of the students whose gender is same as their advisors?
    12. Get the employee id and name of professors who advise atleast one women student?
    13. Obtain the department id and name of departments that do not offer a course having total credit of 50?
    14. Obtain department id,name of department whose courses are all of 50 credit course? 
    15. Obtain the roll nos of students who are currently enrolled for either btech or mca course(Use union and also obtain the result with AND,OR Operators)?
    16. Obtain the roll nos of students who are currently not enrolled for mtech course?
    17. Obtain the name,department id and the total no of courses offered by each department?
    18. Report the total enrolment in each course in the second sem of 2012 include only the courses with a minimum enrolment of 60?
    19. Obtain roll nos and names of all students whose names end with Mohan?
    20. Create a view which contains name ,employee id and phone nos of professors who joined in cse department in or after 2000?
    21. Use the created view to obtain the names of professors in cse department who joined after 2000 and whose name starts with M or ends with n?








PROGRAM NO:3

A data base is being constructed for worlds of cricket championship. A team in the championship is the country in a continent. The jourcy colour of each team is unique.

A team has no. of players each of whose dob and category must be recorded in the data base along with other details .

Every match in the championship is scheduled prior to the beginning of the championship. The team which won a match and the total no of centuries scored in the match is recorded.

The performance of a player in a match is measured in no of runs scored and wickets taken in the match.

Represent the data base with ER model, by clearly identifying entities ,cardinality and all the attributes .

Derive relational schema from the ER model for each table by clearly identifying all columns ,primary and foreign keys. Based on the relational schema express the following queries in SQL?


    1. Find the names of all players in a team having jourcy colour Blue?
    2. Find the name of continent from where largest no of teams are participated in the championship?
    3. Find the no of Bowlers in the Indian team?
    4. Find the name of teams which have large no of bowlers?
    5. Find the name of players who have born before 16/10/1990?
    6. Find the names of players more than 30 years old?
    7. Find the name of each player and the no of centuries he scored?
    8. Find the man of the series of the championship?
    9. Find the name of the team which failed in most of matches?
    10. Find the name of the team who have scored more than 200 runs in the championship?
    11. Name of the bowler from asian continent who has taken least no of wickets?
    12. Name of the teams blongs to a…a?
    13. Date of the match on which least no of runs scored?
    14. Duration in months of the championship?





PROGRAM NO:4    

Create a Data Base for employee information system for an organization . Each employee in the organization can be described with unique employee id, first name, last name ,email id, phone no, hire date, salary etc. Each employee occupies a job in the organizational hierarchy and each employee belongs to a division or department of the organization. Each division or department is headed by a manager. Employee is residing in various cities of the cities, which belongs to a state and has unique postal code. Draw the ER Diagram for representing the Data Base. Derive relational schema from ER model & express the following query in sql?


    1. Create a new user with a password?
    2. Change the password of the user?
    3. Grant previlage to the user to create,sequences,procedures,triggers etc?
    4. Display whole users in the system?
    5. Revoke the granted previlage from the user?
    6. Grant previlage to the user with provision to grant previlage to other users?
    7. Create the required tables for the relation schema described in question with all necessary constraints?
    8. Create a sequence starting with 1 incement by 1 with a max value of 50?
    9. Add new employees to the Data Base with use of sequence?
    10. Roll Back the entire transaction?
    11. Display the annual salary for employees?
    12. Display the current user and system date?
    13. Display the name of all departments with row no?
    14. Add two records into data base?
    15. Create a save point?
    16. Change the name of table describing employee information to some other name?
    17. Increase salary by 10%?
    18. Rollback the transaction up to the savepoint?
    19. Display all employees that have the same no of letters in the first name and last name?
    20. Display managers of whole department with first name as all small letters,last name as all capital letters and residential cities are first letter capital and remaining lower case?
    21. Describe the salary of all employees in the format ‘$99,999’?
    22. List the last date of feb 2012 and date of first Monday after this date?
    23. Display the squared values of employee id?
    24. Display the employees works in sales department in the following format Mr/Ms____ ____ works at department of the company and residing at ____?
    25. List out the details of employee who has got more than one year experience?
    26. Display the hire date in the format mm/dd/yyyy?
    27. Display the details of employee with odd nod eid?
    28. Display the name and hiring date for purchase manager in the format
    29. Lakshman ____ was hired on 30 th of aug 2011?
    30. Display the dept id and name of departments having atlest 3 employees?
    31. Details of departments which has highest no of employee
    32. List out the top 3 earners?



PROGRAM 5


Write a program which will accept Employee no: and calculate the bonus as per the following criterion: 

Salary 
Bonus 

<15000 
20% of salary 

15001-40000 
15% of salary 

40001-80000 
10% of salary 

>80001 
5% of salary 




Cursor 

    1. Display details of first two employees whose id starts from ‘E102’ and have salary < 30000 using CURSOR. 
    2. To write a Cursor to display the Department wise list of Employees with total Salary in each department. 

    Function and Procedure 

    1. Write a function that takes employee name as parameter and returns the number of employees with this name. Use the function to update details of employees with unique names. For other cases, the program (not the function) should display error messages-“No Employee” or “Multiple employees”. 
    2. Write a procedure to update the specified employee name to uppercase. The procedure has a single parameter the employee name. The procedure should also display all the fields of affected tuples. If no tuple is affected, an error message is displayed. 
    3. Create a procedure which will receive account_id and amount to withdraw. If the account does not exist, it will display a message. Otherwise, if the account exists, it will allow the withdrawal only if the new balance after the withdrawal is atleast 1000. 

    Trigger 

    1. Create a trigger on employee table such that whenever a row is deleted, it is moved to history table named ‘emp_history’ with the same structure as employee table. ‘Emp_history’ will contain an additional column “date_of_deletion” to store the date on which the row is removed. 
    2. Create a trigger on employee table such that whenever a new employee record is inserted, the employee’s seniority position is calculated based on the year of experience and when an employee’s record is deleted ,update the seniority position of other employees accordingly. 

