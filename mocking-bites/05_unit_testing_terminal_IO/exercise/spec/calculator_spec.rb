require 'calculator'

RSpec.describe InteractiveCalculator do
  it "calculates subtraction given two numbers" do
    io = double :io
    expect(io).to receive(:puts).with('Hello. I will subtract two numbers.').ordered
    expect(io).to receive(:puts).with('Please enter a number').ordered
    expect(io).to receive(:gets).and_return('3').ordered
    expect(io).to receive(:puts).with('Please enter another number').ordered
    expect(io).to receive(:gets).and_return('1').ordered
    expect(io).to receive(:puts).with('Here is your result:').ordered
    expect(io).to receive(:puts).with('3 - 1 = 2').ordered

    calculator = InteractiveCalculator.new(io)
    calculator.run
  end

  # it "fails if given a string instead of a number" do
  #   io = double :io
  #   expect(io).to receive(:puts).with('Hello. I will subtract two numbers.').ordered
  #   expect(io).to receive(:puts).with('Please enter a number').ordered
  #   expect(io).to receive(:gets).and_return('three').ordered
    
  #   calculator = InteractiveCalculator.new(io)
  #   expect { calculator.run }.to raise_error "You must enter a number!"
  # end
end

