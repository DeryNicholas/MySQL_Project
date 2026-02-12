DROP DATABASE IF EXISTS myfinance_tracker;
CREATE DATABASE myfinance_tracker;
USE myfinance_tracker;

CREATE TABLE income(
	income_id INT AUTO_INCREMENT PRIMARY KEY,
    Date DATETIME,
    Amount DECIMAL(10,2),
	Source VARCHAR(200)
    
);
    
CREATE TABLE expenses(
	expense_id INT AUTO_INCREMENT PRIMARY KEY,
    Date DATETIME,
    Amount DECIMAL(10,2),
    Category VARCHAR(100),
    income_id INT,
     FOREIGN KEY (income_id) REFERENCES income(income_id)
);

/*USE myfinance_tracker;
ALTER TABLE income
ADD Month VARCHAR(100);


UPDATE  income
SET Month ='September'
WHERE income_id = 1;

UPDATE income
SET Month = 'October'
WHERE income_id = 2
*/


    