class MusicLibrary
  def initialize
    @library = []
  end

  def add(track)
    @library << track
  end

  def all
    fail "No tracks in MusicLibrary" if @library.empty?
    return @library
  end
  
  def search(keyword)
    fail "No tracks in MusicLibrary" if @library.empty?
    return @library.select { |track| track.matches?(keyword) }
  end
end