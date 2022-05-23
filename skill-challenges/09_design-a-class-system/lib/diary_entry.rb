class DiaryEntry 
  def initialize(title, contents)
    @title = title
    @contents = contents
    @contact_list = []
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def add_contact(contact_name, mobile_number)
    @contact_list << contact_name
    @contact_list << mobile_number
  end

  def show_contact
    return @contact_list
  end

  def entry_length
    return @contents.split(" ").length
  end

  def time_to_read(wpm)
    fail "wpm must be greater than 0" if !wpm.positive?
    (entry_length / wpm.to_f).ceil
  end
end