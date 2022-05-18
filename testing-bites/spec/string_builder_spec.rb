require 'string_builder'

RSpec.describe StringBuilder do
  it "tests for initialize" do
    string = StringBuilder.new
    result = string.initialize
    expect(result).to eq ""
  end

  it "tells you the length of a string" do
    string = StringBuilder.new
    string.add("This is my string")
    result = string.size
    expect(result).to eq 17
  end

  it "returns the correct string" do
    string = StringBuilder.new
    string.add("This is another string")
    result = string.output
    expect(result).to eq "This is another string"
  end
end
