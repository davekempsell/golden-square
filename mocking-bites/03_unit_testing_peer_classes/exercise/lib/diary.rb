# Diary = Struct.new(:contents)

class Diary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end
end
