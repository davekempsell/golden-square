require 'todo'
require 'todo_list'

RSpec.describe "integration tests" do
  describe TodoList do
    describe "#incomplete method" do
      it "fails if no tasks passed to class" do
        my_list = TodoList.new
        expect { my_list.incomplete }.to raise_error "no todos in list"
      end
      it "returns multiple non-done todos when more than one in Todo List" do
        my_list = TodoList.new
        task_1 = Todo.new("Do this thing")
        task_2 = Todo.new("Do this other thing")
        my_list.add(task_1)
        my_list.add(task_2)
        expect(my_list.incomplete).to eq ["Do this thing", "Do this other thing"]
      end
    end

    describe "#complete method" do
      it "fails if no tasks passed to class" do
        my_list = TodoList.new
        expect { my_list.complete }.to raise_error "no todos in list"
      end
      it "returns multiple completed tasks" do
        my_list = TodoList.new
        task_1 = Todo.new("Do this thing")
        task_2 = Todo.new("Do this other thing")
        task_3 = Todo.new("Yet another thing to do")
        task_1.mark_done!
        task_2.mark_done!
        my_list.add(task_1)
        my_list.add(task_2)
        my_list.add(task_3)
        expect(my_list.complete).to eq ["Do this thing", "Do this other thing"]
      end
    end

    it "marks all todos as complete when #give_up! method called" do
      my_list = TodoList.new
        task_1 = Todo.new("Do this thing")
        task_2 = Todo.new("Do this other thing")
        my_list.add(task_1)
        my_list.add(task_2)
        my_list.give_up!
        expect(my_list.complete).to eq ["Do this thing", "Do this other thing"]
    end
  end
end