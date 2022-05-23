require 'todo_list'

RSpec.describe TodoList do
  it "returns all tasks in list" do
    my_list = TodoList.new
    my_list.add("Do a thing.")
    my_list.add("Do another thing.")
    expect(my_list.show_list).to eq ["Do a thing.", "Do another thing."]
  end
end