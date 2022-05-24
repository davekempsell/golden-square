RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = double :task_list, count: 1,
                                   clear: :success
    task = double :task
    
    expect(task_list).to receive(:add).with(task)
    expect(task_list).to receive(:list).and_return([task])

    # expect when add is called on task_list with 'task', it returns [task]
    # calling count on task_list returns 1
    # calling clear on task_list returns :success

    # Don't edit below
    task_list.add(task)
    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end