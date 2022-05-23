require 'exercise_one'

RSpec.describe "estimate_reading_time method" do
  it "returns 1 for less than 200 words" do
    reading_time = estimate_reading_time("example " * 50)
    expect(reading_time).to eq 1
  end

  it "returns 2 for a 300 word text" do
    reading_time = estimate_reading_time("example " * 300)
    expect(reading_time).to eq 2
  end

  it "returns 50 for a 10,000 word text" do
    reading_time = estimate_reading_time("example " * 10000)
    expect(reading_time).to eq 50
  end

  it "fails if no text given" do
    expect { estimate_reading_time(nil) }.to raise_error "no text given"
  end
end