require 'password_checker'

RSpec.describe PasswordChecker do
  it "correct password used" do
    checker = PasswordChecker.new
    result = checker.check("kempsell123")
    expect(result).to eq true
  end

  context "password is less than 8 characters" do
    it "fails" do
      checker = PasswordChecker.new
      expect { checker.check("hamster") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end