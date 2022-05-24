require "exercise_two"

RSpec.describe "check_grammar method" do
  it "checks if the first letter is not a capital letter" do
    result = check_grammar("i can code")
    expect(result).to eq "Your grammar is incorrect."
  end

  it "checks if the text ends in a question mark" do
    result = check_grammar("I can code?")
    expect(result).to eq "Your grammar is correct."
  end
end
