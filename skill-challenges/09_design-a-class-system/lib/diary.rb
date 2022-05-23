class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry) #entry is instance of DiaryEntry
    @diary_entries << entry
  end
  
  def read_entry(entry) #entry is instance of DiaryEntry
    fail "Entry isn't present within Diary" unless @diary_entries.include?(entry)
    index = @diary_entries.index(entry)
    return @diary_entries[index].contents
  end

  def show_contacts
    contacts = @diary_entries.map(&:show_contact)
    sorted_contacts = contacts.select { |contact| contact != [] }
    if sorted_contacts.empty? 
      return "No contacts are stored in Diary."
    else
      return sorted_contacts
    end
  end

  def best_entry_for_time(wpm, minutes)
    fail "wpm must be greater than 0" if !wpm.positive?
    if readable_entries(wpm, minutes).first == nil
      return "No entries can be read in given time."
    else
      return readable_entries(wpm, minutes).max_by(&:entry_length)
    end 
  end

  private

  def readable_entries(wpm, minutes)
    @diary_entries.filter do |entry|
      entry.time_to_read(wpm) <= minutes
    end
  end
end