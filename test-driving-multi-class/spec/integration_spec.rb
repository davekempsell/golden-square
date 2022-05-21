require 'diary'
require 'diary_entry'

RSpec.describe "Diary integration" do
  describe Diary do
    context "after adding some entries" do
      it "returns a list of added entries using all method" do
        diary = Diary.new
        entry = DiaryEntry.new("Monday", "One two three.")
        diary.add(entry)
        expect(diary.all).to eq [entry]
      end

      it "count_words method returns total of words in all entries" do
        diary = Diary.new
        entry1 = DiaryEntry.new("Monday", "One two three.")
        entry2 = DiaryEntry.new("Tuesday", "Four five six.")
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.count_words).to eq 6 
      end

      it "returns estimate of reading time for all entries" do
        diary = Diary.new
        entry1 = DiaryEntry.new("Monday", "One two three.")
        entry2 = DiaryEntry.new("Tuesday", "Four five six.")
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.reading_time(2)).to eq 3
      end
    end
  end

    describe "find_best_entry_for_reading_time method" do
      it "fails when wpm is zero" do
        diary = Diary.new
        expect { diary.find_best_entry_for_reading_time(0, 2) }.to raise_error("ERROR")
      end

      context "there is an instance of diary entry that can be read in the time" do
        it "returns an instance of diary entry that can be read in the given time" do
          diary = Diary.new
          entry1 = DiaryEntry.new("Monday", "One two three.")
          entry2 = DiaryEntry.new("Tuesday", "One two three four five six.")
          entry3 = DiaryEntry.new("Wednesday", "One two three four five six seven eight.")
          diary.add(entry1)
          diary.add(entry2)
          diary.add(entry3)
          result = diary.find_best_entry_for_reading_time(2, 3)
          expect(result).to eq entry2
        end
      end

      context "there isn't an instance of diary entry that can be read in the time" do
        it "tells the user there isn't an entry that can be read" do
          diary = Diary.new
          entry1 = DiaryEntry.new("Monday", "One two three four five.")
          entry2 = DiaryEntry.new("Tuesday", "One two three four five six.")
          entry3 = DiaryEntry.new("Wednesday", "One two three four five six seven eight.")
          diary.add(entry1)
          diary.add(entry2)
          diary.add(entry3)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq "All entries will take too long to read"
        end
      end
    end
end