require 'diary'

RSpec.describe "make_snippet method" do
  it "returns a string as entered" do
    diary_entry = make_snippet("Today I was learning to code at makers.")
    expect(diary_entry).to eq "Today I was learning to code at makers."
  end
end
