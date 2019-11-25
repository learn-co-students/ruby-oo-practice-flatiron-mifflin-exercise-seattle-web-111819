class Manager
  attr_accessor :name, :department, :age
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    #   * returns an `Array` of all the managers
    @@all
  end

  def employees
    #    * returns an `Array` of all the employees that the manager oversees
    Employee.all.select {|employee| employee.manager == self}
  end

  def hire_employee
#    * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
    Employee.new("Chris", 1500, self)
end

  def self.all_departments
    #    * returns an `Array` of all the department names that every manager oversees
    @@all.map {|manager| manager.department}
  end

  def self.average_age
    #    * returns a `Float` that is the average age of all the managers

   average_ages = @@all.map {|manager|manager.age}.sum / @@all.length

   average_ages
  end


end
