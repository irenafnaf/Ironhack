class SalariedEmployee < Employee
    def initialize(name, email, yearly_salary)
        # @name = name
        # @email = email
        super(name, email)
        @yearly_salary = yearly_salary
    end

    def calculate_salary
      #returns the yearly salary / number of weeks
     @yearly_salary / 52
    end
end