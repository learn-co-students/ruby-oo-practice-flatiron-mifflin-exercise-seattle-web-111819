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
    #    * returns an `Array` of all the employees
    @@all
  end

  def self.paid_over(number)
    #takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
    
    @@all.select { |employee|employee.salary > number}
  end

  def self.find_by_department(departments)
    #takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
@@all.find {|employee|employee.manager.department == departments}

  end

  def tax_bracket # e1.tax_bracket
    #returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
  
    max_value = self.salary + 1000
    min_value = self.salary - 1000

    tax_bracket = @@all.select {|employee| employee.salary >= min_value && employee.salary <= max_value}
    
    tax_bracket.delete(self.salary)
    tax_bracket

    #(employee.salary-1000).upto(employee.salary+1000)}
    binding.pry
    #(employee.salary+1000).upto(employee.salary-1000)}.to_i

  end
  
end
