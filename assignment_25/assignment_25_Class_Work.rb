class Employee

  @employee_name = nil
  @employee_city = nil
  @company_name = nil
  @company_city = nil
  @employees = []

  attr_accessor :name
  attr_accessor :city
  attr_accessor :id
  #attr_accessor :neme, :city, :id

end
#break
class Company

  attr_accessor :name
  attr_accessor :city
  attr_accessor :employees
  #attr_accessor :name, :city, :employees

  def 
  # Adds the passed employee to the company employee list
  def hire_employee(employee)
    self.employees
    @employees
  end

  # Removes the passed employee from the company employee list
  def fire_employee(employee)

  end
end

obj = Employee.new
obj.employee_name = 'Brian Burridge'
obj.employee_city = 'Clearwater'
# obj.employees = ?
obj.hire_employee(obj)
obj.fire_employee(obj)
