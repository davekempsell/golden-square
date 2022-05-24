class Diary
    def initialize
      @diary = []
    end
  
    def add(entry)
      @diary << entry
    end
  
    def all
      return @diary
    end
  
    def count_words
      return @diary.map(&:count_words).sum
    end
  
    def reading_time(wpm)
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      fail "ERROR" unless wpm.positive?
      if readable_entries(wpm, minutes).first == nil
        return "All entries will take too long to read"
      else
        return readable_entries(wpm, minutes).max_by(&:count_words)
      end
    end

    private

    def readable_entries(wpm, minutes)
      @diary.filter do |entry|
        entry.reading_time(wpm) <= minutes
      end
    end
  end