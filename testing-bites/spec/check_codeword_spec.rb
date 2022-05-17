require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "giving the codeword 'horse' allows access" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "giving a codeword with the correct first and last letters gives hint" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope!"
  end

  it "wrong codeword gets told No" do
    result = check_codeword("enter")
    expect(result).to eq "WRONG!"
  end
end