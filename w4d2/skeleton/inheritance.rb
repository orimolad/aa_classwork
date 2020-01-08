class Employee
  attr_reader :name, :title, :salary, :boss

  def initialize (name,salary, title, boss)
    @name = name
    @title = title
    @salary = salary 
    @boss = boss 
  end

  def bonus(multiplier)
    self.salary * multiplier
  end
end

class Manager < Employee
  attr_reader :employees
  def initialize(name, salary, title, boss)
    super
    @employees = []
    
  end

  def add_employee(employee)
    @employees << employee
  end

  def bonus(multiplier)
    total = 0
      @employees.each do |employee|
        total += employee.salary
      end
      total * multiplier
  end

end
  ned = Manager.new("Ned", 1000000, "Founder", nil)
  darren = Manager.new("Darren", 78000, "TA Manager", ned)
  shawna = Employee.new("Shawna", 12000, "TA", darren)
  david = Employee.new("David", 10000, "TA", darren)

  darren.add_employee(shawna)
  darren.add_employee(david)
  ned.add_employee(darren)
  ned.add_employee(shawna)
  ned.add_employee(david)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_00