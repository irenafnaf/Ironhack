require_relative('hourly_payable')

class HourlyEmployee < Employee
    
    include HourlyPayable #include module


    def initialize(name, email, hourly_rate, hours_worked)
        # @name = name
        # @email = email
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
    	# @hours_worked * @hourly_rate
   	calculate_payment_hourly
    end
end

