require 'music_library'

RSpec.describe MusicLibrary do
  it "fails if #all method is called when empty" do
    my_library = MusicLibrary.new
    expect { my_library.all }.to raise_error "No tracks in MusicLibrary"
  end
  it "fails if #search method is called when empty" do
    my_library = MusicLibrary.new
    expect { my_library.search("word") }.to raise_error "No tracks in MusicLibrary"
  end
  it "returns a list of tracks added to the library" do
    my_library = MusicLibrary.new
    fake_track = double :track
    my_library.add(fake_track)
    expect(my_library.all).to eq [fake_track]
  end
  it "returns a list of tracks that match the keyword" do
    my_library = MusicLibrary.new
    track_1 = double :track
    expect(track_1).to receive(:matches?).with("two").and_return(false)
    track_2 = double :track
    expect(track_2).to receive(:matches?).with("two").and_return(true)
    track_3 = double :track
    expect(track_3).to receive(:matches?).with("two").and_return(true)
    my_library.add(track_1)
    my_library.add(track_2)
    my_library.add(track_3)
    expect(my_library.search("two")).to eq [track_2, track_3]
  end
end


