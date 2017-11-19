DECLARE @highest_payed_employee_id;
DECLARE @manager_first_name;
DECLARE @manager_last_name;

DECLARE @highest_payed_employee_first_name;
DECLARE @highest_payed_employee_last_name;

DECLARE @highest_payed_employee_birth_date;

DECLARE @department;

select emp_no from salaries where salary = (select max(salary) from salaries) into @highest_payed_employee_id;

select first_name from employees where emp_no = @highest_payed_employee_id into @highest_payed_employee_first_name;
select last_name from employees where emp_no = @highest_payed_employee_id into @highest_payed_employee_last_name;

select birth_date from employees where emp_no = @highest_payed_employee_id into @highest_payed_employee_birth_date;

select dept_name from departments where dept_no = 
(select dept_no from dept_emp where emp_no = @highest_payed_employee_id) into @department;


select first_name from employees where emp_no = 
(select emp_no from dept_manager where dept_no = (select dept_no from departments where dept_no = 
(select dept_no from dept_emp where emp_no = @highest_payed_employee_id)) limit 1) into @manager_first_name;

select last_name from employees where emp_no = 
(select emp_no from dept_manager where dept_no = (select dept_no from departments where dept_no = 
(select dept_no from dept_emp where emp_no = @highest_payed_employee_id)) limit 1) into @manager_last_name;



select @highest_payed_employee_first_name as 'First Name', @highest_payed_employee_last_name as 'Last Name',@highest_payed_employee_birth_date as 'Birth Date' @manager_first_name as 'Manager First Name', @manager_last_name as 'Manager Last Name', @department as 'Department';