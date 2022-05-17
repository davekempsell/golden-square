require 'reminder'

RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Dave")
    reminder.remind_me_to("Water the plants")
    result = reminder.remind()
    expect(result).to eq "Water the plants, Dave!"
  end
end