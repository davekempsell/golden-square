require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns one thing to be grateful for" do
    gratitudes = Gratitudes.new
    gratitudes.add("coffee")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: coffee"
  end

  it "returns multiple things to be grateful for" do
    gratitudes = Gratitudes.new
    gratitudes.add("coffee")
    gratitudes.add("Ruby")
    gratitudes.add("more coffee")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: coffee, Ruby, more coffee"
  end
end