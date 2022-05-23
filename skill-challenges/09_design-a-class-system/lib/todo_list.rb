class TodoList
  def initialize
    @todo_list = []
  end
  
  def add(task) # task will be a string
    @todo_list << task
  end

  def show_list
    return @todo_list
  end
end