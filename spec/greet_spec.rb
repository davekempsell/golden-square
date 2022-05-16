require 'greet'

RSpec.describe "greet method" do
  it "adding Steve returns 'Hello, Steve!" do
    result = greet("Steve")
    expect(result).to eq "Hello, Steve!"
  end
end