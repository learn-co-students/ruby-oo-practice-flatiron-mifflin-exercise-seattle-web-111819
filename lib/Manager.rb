require 'pry'
class Manager
    attr_accessor :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    def self.all #Manager.all
        @@all
    end
    def employees
        Employee.all.select{|employee| employee.manager == self} #m1.employees
    end
    def hire_employee(employee_name, employee_salary) #m2.hire_employee("Alice", 5000), m2.employees
        #adds that employee to the list of employees that the manager oversees
        new_hire = Employee.new(employee_name, employee_salary, self)

    end
    def self.all_departments
        #return all department names 
        #that every manager oversees
        @@all.map{|managers| managers.department}
        
    end
    def self.average_age
        ages = @@all.map {|managers| managers.age}
        added_ages = ages.reduce(:+)
        (added_ages).to_f/(ages.length).to_f
        # binding.pry
        # divide by ages.length
    end

end
