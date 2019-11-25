require 'pry'
class Employee
    attr_accessor :name, :salary, :manager
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    def self.all
        @@all
    end
    def self.paid_over(money) 
        @@all.select{|employees| employees.salary > money}
        # binding.pry
    end

    def self.find_by_department(departments) #Employee.find_by_department("Admin")
        #find the employee by department
        #return first employee whose managers works in that department
        @@all.find {|employee| employee.manager.department == departments}
        # manager = Manager.all.select{|manager| manager.department == departments}
        # manager.employees

        # manager.employees.find
        #.find{|manager| manager.employees}

        # binding.pry
    end

    def tax_bracket #e1.tax_bracket
        over = self.salary + 1000
        under = self.salary - 1000
        @@all.select{|employee| employee.salary > under && employee.salary < over}

        # binding.pry
        #returns an Array of all the employees whose salaries are within $1000 (± 1000) 
        #of the employee who invoked the method
    end

end

