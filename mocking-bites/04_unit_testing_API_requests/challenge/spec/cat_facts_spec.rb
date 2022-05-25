require 'cat_facts'

RSpec.describe CatFacts do
  it "provides a Cat Fact" do
    requester = double :requester
      expect(requester).to receive(:get)
        .with(URI("https://catfact.ninja/fact"))
        .and_return('{"fact":"A happy cat holds her tail high and steady.","length":43}')
    cat_fact = CatFacts.new(requester)
    expect(cat_fact.provide).to eq "Cat fact: A happy cat holds her tail high and steady."
  end
end
