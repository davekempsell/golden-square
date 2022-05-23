class Todo
  def initialize(task) # task is a string
    fail "Todo must have a task" if task == ""
    @task = task
    @status = "incomplete"
  end

  def task  # Returns the task as a string
    return @task
  end

  def status
    return @status
  end

  def mark_done! # Marks the todo as done
    @status = "completed"
  end

  def done? # Returns true if the task is done
    @status == "completed"
  end
end