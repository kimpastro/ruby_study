# Second principle: Open-Closed Principle

#Before
class FullTimeContract
  def full_salary
    # calculate salary
  end
end

class TraineeContract
  def intern_salary
    # calculate salary
  end
end

class PayRoll
  attr_accessor :balance

  def calculate employee
    if employee.class == FullTimeContract
      self.balance = employee.full_salary
    elsif employee.class == TraineeContract
      self.balance = employee.intern_salary
    end
  end
end

#After
module Payable
  def salary
    raise "Not implemented"
  end
end

class FullTimeContract
  include Payable

  def salary
    # calculate full time salary
  end
end

class TraineeContract
  include Payable

  def salary
    # calculate intern salary
  end
end

class PayRoll
  attr_accessor :balance

  def calculate employee
    self.balance = employee.salary
  end
end