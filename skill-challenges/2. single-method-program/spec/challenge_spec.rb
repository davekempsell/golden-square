require "challenge"

RSpec.describe "check_text method" do
  it "returns nothing when #TODO isn't included" do
    result = check_text("clean the car")
    expect(result).to eq nil
  end

  it "returns string when #TODO is included" do
    result = check_text("#TODO clean the car")
    expect(result).to eq "#TODO clean the car"
  end

  it "returns string when #TODO is at the end of the string" do
    result = check_text("clean the car #TODO")
    expect(result).to eq "clean the car #TODO"
  end

  it "returns nothing when todo is in lowercase" do
    result = check_text("clean the car #todo")
    expect(result).to eq nil
  end
end
