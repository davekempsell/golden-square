require "counter"

RSpec.describe Counter do
  it "counts to 10" do
    counter = Counter.new
    counter.add(10)
    result = counter.report
    expect(result).to eq "Counted to 10 so far."
  end

  it "counts to 100" do
    counter = Counter.new
    counter.add(100)
    result = counter.report
    expect(result).to eq "Counted to 100 so far."
  end
end