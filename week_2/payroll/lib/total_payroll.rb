class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
      # Should output how much we're paying each employee for this week 
      # and the total amount spent on payroll this week. 
    total_payroll = 0
   	@employees.each do |employee|
   		total_payroll = total_payroll + employee.calculate_salary
   		puts "#{employee.name} gets paid #{employee.calculate_salary}"
   	end

   	puts "The total amount spent on payroll this week is: #{total_payroll}"


  end
end


