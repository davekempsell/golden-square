require 'track'
require 'music_library'

RSpec.describe "integration" do
  it "returns a list of tracks added to the library" do
    my_library = MusicLibrary.new
    my_track = Track.new("David Bowie", "Heroes")
    my_library.add(my_track)
    expect(my_library.all).to eq [my_track]
  end
  it "returns a list of tracks that match the keyword" do
    my_library = MusicLibrary.new
    track_1 = Track.new("David Bowie", "Heroes")
    track_2 = Track.new("Spice Girls", "Spice World")
    track_3 = Track.new("Queen", "Spice song")
    my_library.add(track_1)
    my_library.add(track_2)
    my_library.add(track_3)
    expect(my_library.search("Spice")).to eq [track_2, track_3]
  end
end