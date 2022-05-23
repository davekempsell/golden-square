class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo
  end

  def incomplete # Returns all non-done todos
    fail "no todos in list" if @todo_list.empty?
    incomplete_tasks = []
    @todo_list.each do |task|
      incomplete_tasks << task.task if task.status == "incomplete"
    end
    return incomplete_tasks
  end

  def complete # Returns all complete todos
    fail "no todos in list" if @todo_list.empty?
    completed_tasks = []
    @todo_list.each do |task|
      completed_tasks << task.task if task.status == "completed"
    end
    return completed_tasks
  end

  def give_up!
    @todo_list.map { |task| task.mark_done! }
  end
end
