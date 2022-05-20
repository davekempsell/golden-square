require 'diary_entry'

RSpec.describe DiaryEntry do
  describe "title method" do
    it "returns title as string" do
      entry = DiaryEntry.new("Monday", "One two three.")
      expect(entry.title).to eq "Monday"
    end
  end

  describe "contents method" do
    it "returns contents as string" do
      entry = DiaryEntry.new("Monday", "One two three.")
      expect(entry.contents).to eq "One two three."
    end
  end

  describe "count words method" do
    it "Returns the number of words in the contents as an integer" do
      entry = DiaryEntry.new("Monday", "One two three.")
      expect(entry.count_words).to eq 3
    end
  end

  describe "reading time method" do
    it "returns an estimate of reading time of the entry" do
      entry = DiaryEntry.new("Monday", "One two three.")
      expect(entry.reading_time(2)).to eq 2
    end
  end

  describe "reading_chunk method" do
    it "returns a chunk of contents that can be read in the given time" do
      entry = DiaryEntry.new("Monday", "One two three four five six seven eight nine ten.")
      expect(entry.reading_chunk(2, 2)).to eq "One two three four"
    end
  end
end