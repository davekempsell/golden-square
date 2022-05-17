require 'report_length'

RSpec.describe "report_length method" do
  it "a string with no characters returns 0" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end

  it "a string with a single five letter word returns 5" do
    result = report_length("horse")
    expect(result).to eq "This string was 5 characters long."
  end

  it "a string saying 'Hello, world!' returns 13" do
    result = report_length("Hello, world!")
    expect(result).to eq "This string was 13 characters long."
  end
end
