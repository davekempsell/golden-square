require 'track'

RSpec.describe Track do
  it "returns true if the keyword matches either the title or artist" do
    my_track = Track.new("LEON", "Hope Is A Heartache")
    expect(my_track.matches?("Hope")).to eq true
  end
  it "returns false if the keyword isn't in title or artist" do
    my_track = Track.new("Sam Fender", "All is on my side")
    expect(my_track.matches?("banana")).to eq false
  end
end