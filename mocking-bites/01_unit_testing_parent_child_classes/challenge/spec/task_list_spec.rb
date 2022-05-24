require 'task_list'

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = double :task
    task_2 = double :task
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = double :task, complete?: true
    task_2 = double :task, complete?: true
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq true
  end

  it "returns false if not all tasks are complete" do
    task_list = TaskList.new
    task_1 = double :task, complete?: true
    task_2 = double :task, complete?: false
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end
end
