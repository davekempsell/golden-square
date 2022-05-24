require "task_list"
require "task"
require 'task_formatter'

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end

  context "when task being formatted is incomplete" do
    it "TaskFormatter shows it is incomplete" do
      task = Task.new("my_title")
      formatter = TaskFormatter.new(task)
      expect(formatter.format).to eq "- [ ] #{task.title}"
    end
  end

  context "when task being formatted is complete" do
    it "TaskFormatter shows it is complete" do
      task = Task.new("my_title")
      formatter = TaskFormatter.new(task)
      task.mark_complete
      expect(formatter.format).to eq "- [x] #{task.title}"
    end
  end
end
