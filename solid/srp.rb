# First principle: Single Responsibility Principle

#Before

class Order
  def calculate_total_sum; end
  def get_items; end
  def add_item; end
  def delete_item; end

  def print_order; end
  def show_order; end

  def load; end
  def save; end
  def update; end
  def delete; end
end


#After
class Order
  def calculate_total_sum; end
  def get_items; end
  def add_item; end
  def delete_item; end
end

def OrderRepository
  def load; end
  def save; end
  def update; end
  def delete; end
end

def OrderViewer
  def print_order; end
  def show_order; end
end