class SecretDiary
  def initialize(diary) 
    @diary = diary
    @locked = true
  end

  def read
    fail 'Go away!' if @locked = true 

    

    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    # Locks the diary
    # Returns nothing
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
  end
end