class MultiPaymentEmployee < Employee
    def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
        # @name = name
        # @email = email
        super(name, email)
        @yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns (yearly salary / number of weeks) + (overtime * hours worked)
      # overtime = ""
      if @hours_worked > 40
      	overtime_hours = @hours_worked - 40
      	overtime = @hourly_rate * overtime_hours
      	@yearly_salary += overtime # @yearly_salary = @yearly_salary + overtime
      else
      	@yearly_salary
      end	
    end
end