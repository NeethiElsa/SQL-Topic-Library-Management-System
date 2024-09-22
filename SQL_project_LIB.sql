CREATE database library;
use library;

CREATE TABLE branch(
  BranchNo INT PRIMARY KEY,
  ManagerID INT,
  BranchAddress VARCHAR(50) NOT NULL,
  ContactNo INT
);

INSERT INTO branch VALUES (10,21,"Adyar",34567),(11,23,"Coimbatore",39967),(12,24,"Egmore",34569),
(13,25,"Alwarpet",34341),(14,30,"Anna Nagar",35711),(15,26,"Mylapore",34522),(17,29,"Perambur",34341),
(19,33,"Erode",34067);

CREATE TABLE Employee(
  EmpID INT PRIMARY KEY,
  EmpName VARCHAR(50) NOT NULL,
  EmpPosition Varchar(30),
  Salary INT,
  BranchNo INT,
  FOREIGN KEY(BranchNo) REFERENCES branch(BranchNo)
);

INSERT INTO Employee VALUES (1,"John Mathew","Librarian",30000,10),(2,"Stella","Library Assistant",20000,11),
(3,"Maya S","Library Manager",70000,10),(4,"Sneha S","Library Clerk",35000,12),
(5,"George Verghese","Library Manager",80000,13),(6,"Merlin Joe","Library Assistant",20000,17),
(7,"Jose","Library Clerk",35000,19),(8,"Lakshmi","Librarian",30000,15),
(9,"Latha","Librarian",32000,17),(10,"Samuel","Senior Librarian",56000,17);

CREATE TABLE Books(
  ISBN INT PRIMARY KEY,
  Booktitle VARCHAR(80) NOT NULL,
  Category Varchar(30),
  RentalPrice INT,
  CurrentStatus VARCHAR(30),
  Author VARCHAR(80),
  Publisher VARCHAR(80)
  
);

INSERT INTO Books VALUES (234568912,'The Inheritance of Loss', 'Literary Fiction',20,"no", 'Kiran Desai', 'Grove Press'),
(234568112,'The Palace of Illusions', 'Mythology', 22,"no",'Chitra Banerjee Divakaruni', 'Doubleday'),
(214568917,'Five Point Someone', 'Fiction', 20,"yes",'Chetan Bhagat', 'Rupa Publications'),
(237568912,'Khasakkinte Itihasam', 'Literary Fiction', 70,"yes",'O. V. Vijayan', 'Current Books'),
(234008912,'Manju', 'Fiction', 30,"no",'M. T. Vasudevan Nair', 'DC Books'),
(904568910,'Randamoozham', 'Historical Fiction', 20,"no",'M. T. Vasudevan Nair', 'Current Books'),
(994568912,'Pride and Prejudice', 'Classic Romance',56,"no", 'Jane Austen', 'T. Egerton'),
(994068916,'The Catcher in the Rye', 'Fiction',80,"yes",'J.D. Salinger', 'Little, Brown and Company'),
(524069912,'The Alchemist', 'Fiction',50,"no",'Paulo Coelho', 'HarperOne'),
(454568911,'The Hobbit', 'Fantasy',40,"yes",'J.R.R. Tolkien', 'George Allen & Unwin'),
(903368912,'Sapiens: A Brief History of Humankind', 'Non-Fiction',20,"no",'Yuval Noah Harari', 'Harper'),
(905414782,'Educated', 'Memoir',45,"no",'Tara Westover', 'Random House'),
(888414782,'The Silent Patient', 'Thriller',30, "yes",'Alex Michaelides', 'Celadon Books'),
(905414783,'The God of Small Things', 'Literary Fiction', 20,"no",'Arundhati Roy', 'Random House India'),
(905414123,'Train to Pakistan', 'Historical Fiction',30,"yes",'Khushwant Singh', 'Vikas Publishing House'),
(742114782,'The White Tiger', 'Fiction',40,"no",'Aravind Adiga', 'Free Press');

-- truncate books;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(200),
    Customer_address VARCHAR(200),
    Reg_date DATE
);

INSERT INTO Customer VALUES (1, 'Alice Johnson', '123 Street, Springfield', '2022-01-15'),
(2, 'Divya Rani', 'Anna Nagar, Chennai', '2022-02-20'),
(3, 'Rahul Menon', 'East Coast Road, Pondicherry', '2022-03-05'),
(4, 'Lakshmi Devi', 'Kotturpuram, Chennai', '2022-04-10'),
(5, 'Suresh Babu', 'South Usman Road, T. Nagar, Chennai', '2023-05-25'),
(6, 'Priya Nair', '4thCross Street,Chennai', '2021-06-30'),
(7, 'Karthik Raj', 'Anna Salai, Chennai', '2022-07-12'),
(8, 'Ananya Iyer', 'Muthuramalingam Street, Madurai', '2022-08-18'),
(9, 'Ivy T', '606 Valleyview', '2023-09-22'),
(10, 'Jacky Mathew', '707 Ash Road, Woodland', '2023-10-05'),
(11, 'Kiara Whither', '808 Street, Baytown', '2023-11-15'),
(12, 'Leo Das', '909 Avenue, Coastal City', '2023-12-01'),
(13, 'Mia Dsouza', '111 Lane, Seaside', '2022-01-10'),
(14, 'Noah Harris', '222, Sunnytown', '2021-02-14'),
(15, 'Shanthi Mohan', 'Thanjavur', '2021-03-21'),
(16, 'Ravi Chandran', 'Tiruchirappalli', '2021-04-28'),
(17, 'Lakshmi Natarajan', 'Vellore Road, Vellore', '2021-05-15'),
(18, 'Arvind Jagan', 'Kottur, Chennai', '2021-06-10'),
(19, 'Deepa Varma', 'K.K. Nagar, Chennai', '2023-07-19'),
(20, 'Hari Prakash', 'Virugambakkam, Chennai', '2023-08-28');

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust_id INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book INT,
    FOREIGN KEY (Issued_cust_id) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus VALUES
(1, 1, 'The Inheritance of Loss', '2023-01-20', 234568912),
(2, 2, 'Manju', '2023-02-25', 234008912),
(3, 3, 'Randamoozham', '2023-03-15', 904568910),
(4, 4, 'Pride and Prejudice', '2023-04-05', 994568912),
(5, 5, 'The Alchemist', '2023-05-10', 524069912),
(7, 6, 'Sapiens: A Brief History of Humankind', '2023-02-12', 903368912),
(8, 7, 'Educated', '2023-03-25', 905414782),
(9, 8, 'The God of Small Things', '2023-04-10', 905414783),
(10, 9, 'The White Tiger', '2023-05-14', 742114782);

CREATE TABLE ReturnStatus (
    return_Id INT PRIMARY KEY,
    return_cust_id INT,
    return_book_name VARCHAR(255),
    return_date DATE,
    Isbn_book INT,
    FOREIGN KEY (return_cust_id) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus VALUES
(1, 13, 'Five Point Someone', '2024-01-20', 214568917),
(2, 14, 'Khasakkinte Itihasam', '2024-02-25', 237568912),
(3, 15, 'The Catcher in the Rye', '2024-03-15', 994068916),
(4, 16, 'The Hobbit', '2024-04-05', 454568911),
(5, 17, 'The Silent Patient', '2024-05-10', 888414782),
(7, 18, 'Train to Pakistan', '2024-02-12', 905414123);

SELECT * FROM branch;
SELECT * FROM employee;
SELECT * FROM books;
SELECT * FROM customer;
SELECT * FROM issuestatus;
SELECT * FROM returnstatus;

-- 1. Retrieve the book title, category, and rental price of all available books. 

SELECT booktitle,category,rentalprice from books where CurrentStatus="yes";

-- 2.List the employee names and 
-- their respective salaries in descending order of salary. 

SELECT empname,salary from employee order by salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT customer.Customer_name,issuestatus.Issued_book_name from issuestatus LEFT JOIN
customer ON customer.Customer_Id=issuestatus.Issued_cust_id;

-- 4.Display the total count of books in each category. 
SELECT category,count(*) as total_books from books GROUP BY category;

-- 5. Retrieve the employee names and 
-- their positions for the employees whose salaries are above Rs.50,000. 

SELECT empname,empposition,salary from employee having salary > 50000;

-- 6. List the customer names who registered 
-- before 2022-01-01 and have not issued any books yet. 

SELECT customer.Customer_Id,customer.Customer_name, customer.reg_date 
from customer left join issuestatus
ON customer.Customer_Id=issuestatus.Issued_cust_id 	
where Reg_date < "2022-01-01" AND issuestatus.Issue_Id IS NULL;

-- 7. Display the branch numbers and the total count of employees in each branch. 
SELECT BranchNo,count(*) as total_employees from employee group by BranchNo;

-- 8. Display the names of customers who have issued books 
-- in the month of June 2023.
SELECT customer.Customer_Id,customer.Customer_name from customer inner join issuestatus
ON customer.Customer_Id=issuestatus.Issued_cust_id 	where 
Issue_date>=2023-06-01 AND Issue_date<=2023-06-30;

-- 9.Retrieve book_title from book table containing history. 

SELECT booktitle from books where Booktitle like '%history%';

-- 10.Retrieve the branch numbers along with the count of employees 
-- for branches having more than 5 employees

SELECT employee.BranchNo,count(*) as total_employees from employee 
group by BranchNo having total_employees>5;

-- 11.Retrieve the names of employees who manage branches
--  and their respective branch addresses.

SELECT employee.EmpName,branch.BranchAddress,employee.EmpPosition from employee left join branch 
ON employee.BranchNo= branch.BranchNo where employee.EmpPosition like "%manager%";

-- 12. Display the names of customers who have issued books 
-- with a rental price higher than Rs. 25.
SELECT customer.Customer_name,issuestatus.Issued_book_name ,issuestatus.Isbn_book 
from issuestatus INNER JOIN
customer ON customer.Customer_Id=issuestatus.Issued_cust_id WHERE issuestatus.Isbn_book
IN (SELECT books.isbn from books INNER JOIN issuestatus ON
books.ISBN=issuestatus.Isbn_book where rentalprice>25);
