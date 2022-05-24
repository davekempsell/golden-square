class SecretDiary
  def initialize(diary) 
    @diary = diary
    @locked = true
  end

  def read
    fail 'Go away!' if @locked == true 
    return @diary.read
    

    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    @locked = true
    # Locks the diary
    # Returns nothing
  end

  def unlock
    @locked = false
    # Unlocks the diary
    # Returns nothing
  end
end