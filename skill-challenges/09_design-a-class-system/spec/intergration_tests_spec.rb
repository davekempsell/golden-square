require 'diary'
require 'diary_entry'

RSpec.describe "Integration tests" do
  describe "#Diary class" do
    it "returns contents of previously added DiaryEntry" do
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
      entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      expect(my_diary.read_entry(entry_1)).to eq "Some contents and words"
    end
    it "returns list of contacts" do
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
      entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
      entry_3 = DiaryEntry.new("Title_3", "One two three four five six seven eight nine ten.")
      entry_1.add_contact("Dave", "07850123456")
      entry_2.add_contact("Steve", "07900123321")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      my_diary.add(entry_3)
      expect(my_diary.show_contacts).to eq [["Dave", "07850123456"],["Steve", "07900123321"]]
    end
    it "returns message that there are no contacts if Diary doesn't include any" do
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
      entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      expect(my_diary.show_contacts).to eq "No contacts are stored in Diary."
    end
    it "returns the longest entry that can be read in the given time, at a given reading speed" do
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
      entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
      entry_3 = DiaryEntry.new("Title_3", "One two three four five six seven eight nine ten.")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      my_diary.add(entry_3)
      expect(my_diary.best_entry_for_time(2,4)).to eq entry_2
    end
    it "returns message that no entries can be read, if given time is too short" do
      my_diary = Diary.new
      entry_3 = DiaryEntry.new("Title_3", "One two three four five six seven eight nine ten.")
      expect(my_diary.best_entry_for_time(2,4)).to eq "No entries can be read in given time."
    end
  end
end