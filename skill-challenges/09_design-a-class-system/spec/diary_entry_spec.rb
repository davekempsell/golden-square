require 'diary_entry'

RSpec.describe DiaryEntry do
  describe "#entry_length method" do
    it "returns number of words in contents" do
      entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
      expect(entry_1.entry_length).to eq 4
    end
  end

  describe "#time_to_read method" do
    it "returns time to read entry, for a given reading speed" do
      entry_1 = DiaryEntry.new("Title_1", "Some contents and more words")
      expect(entry_1.time_to_read(2)).to eq 3
    end
    it "fails if wpm is given as 0" do
      entry_1 = DiaryEntry.new("Title_1", "Some contents and more words")
      expect { entry_1.time_to_read(0) }.to raise_error "wpm must be greater than 0"
    end
  end
end