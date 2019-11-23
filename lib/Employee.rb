class Employee
    @@all = []

    attr_accessor :name, :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(amount)
        @@all.select {|employee| employee.salary > amount}
    end

    def self.find_by_department(depart)
        Employee.all.find {|employee| employee.manager.department == depart}
    end

    def tax_bracket
        @@all.select {|employee| (employee.salary - self.salary).abs < 10000}
    end

end
