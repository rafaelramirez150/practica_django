DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEmployeeRecords`()
BEGIN
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL FROM employees;
END
//
DELIMITER ;