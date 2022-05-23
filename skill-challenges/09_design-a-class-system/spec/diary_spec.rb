require 'diary'

RSpec.describe Diary do
  it "fails read_entry is called with an entry that isn't present in Diary" do
    my_diary = Diary.new
    entry_1  = "entry_1"
    expect { my_diary.read_entry(entry_1) }.to raise_error "Entry isn't present within Diary"
  end
  it "fails if best_entry_for_time is called with 0 wpm" do
    my_diary = Diary.new
    expect { my_diary.best_entry_for_time(0,2) }.to raise_error "wpm must be greater than 0"
  end
end