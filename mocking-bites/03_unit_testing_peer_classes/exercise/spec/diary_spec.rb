require 'diary'

RSpec.describe 'Int Test:' do
  it 'creates instance of Diary' do
    diary = Diary.new('some_contents')
    expect(diary).to be
  end

  it 'given a new Diary, returns contents of Diary' do
    diary = Diary.new('some_contents')
    expect(diary.read).to eq 'some_contents'
  end
end
