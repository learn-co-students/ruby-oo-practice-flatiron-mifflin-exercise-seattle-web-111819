class Manager
    @@all = []

    attr_accessor :name, :age, :department

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map {|manager| manager.department}.uniq
    end

    def self.average_age
        @@all.reduce(0) {|memo, manag| memo += manag.age} / @@all.count
    end

end
