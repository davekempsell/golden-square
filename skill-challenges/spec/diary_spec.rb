require "diary"

RSpec.describe "make_snippet method" do
  it "returns upto the first five words of the string" do
    entry = make_snippet("Learn to code")
    expect(entry).to eq "Learn to code"
  end

  it "returns the first five words and '...'" do
    entry = make_snippet("I am learning to code at Makers Academy")
    expect(entry).to eq "I am learning to code..."
  end
end

RSpec.describe "count_words method" do
  it "returns 0 if empty string" do
    entry = count_words("")
    expect(entry).to eq 0
  end

  it "returns number of words in string" do
    entry = count_words("I am learning to code at Makers Academy")
    expect(entry).to eq 8
  end
end
