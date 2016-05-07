require_relative('lib/employee_payroll')
require_relative('lib/hourly_employee')
require_relative('lib/salaried_employee')
require_relative('lib/multi_payment_employee')
require_relative('lib/total_payroll')




josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
irene = HourlyEmployee.new('Irene', 'irenef@example.com', 15, 40)
ryan = HourlyEmployee.new('Ryan', 'ryan@example.com', 15, 45)

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

# josh.calculate_salary
# nizar.calculate_salary
# ted.calculate_salary

employees = [josh, nizar, ted, irene, ryan]
payroll = Payroll.new(employees)
payroll.pay_employees
