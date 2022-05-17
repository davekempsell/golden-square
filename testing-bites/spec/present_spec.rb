require 'present'

RSpec.describe Present do
it "unwraps presents on command" do
    present = Present.new
    present.wrap("A Toy")
    result = present.unwrap
    expect(result).to eq "A Toy"
  end

  context "when contents have already been wrapped" do
    it "fails" do
      present = Present.new
      present.wrap(5)
      expect { present.wrap(6) }.to raise_error "A contents has already been wrapped."
    end
  end
end

    