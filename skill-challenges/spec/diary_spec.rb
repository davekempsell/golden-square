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
