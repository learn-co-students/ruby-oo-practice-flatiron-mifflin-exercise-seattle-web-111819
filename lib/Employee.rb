class Employee

    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end 

    def self.all
        @@all
    end

#   takes a num arg, returns [] of all employee who sallary is over amt
#   num --> employees
    def self.paid_over(amount)
        @@all.select {|employee| employee.salary > amount }.map {|employee| employee.name}
    end 

#   takes a dep arg, return 1st emp whose man is of that dep
#   Employee & dep ---> employee
    def self.find_by_department(dept)
        @@all.find { |emp| emp.manager_name.department == dept}
    end 

#   returns [] of all empl whose salary are w/i 1000 of th eemployee who invoked the meth
#   emp1  ---> [] emp salaries 
#   1. set the min ragne to a var
#   2. set the max range to a var
#   3. iterate over all emp salaries and compare against min_range && max_range

    def tax_bracket 
        min = self.salary - 1000 
        max = self.salary + 1000
        @@all.select do |emp| 
            emp.salary > min && emp.salary < max 
        end
    end 

end