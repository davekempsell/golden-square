require 'diary'
require 'secret_diary'
RSpec.describe 'Int Test:' do
  xit 'Creates instance of SecretDiary' do
    diary = Diary.new('some_contents')
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary).to be
  end

  xit 'given a new SecretDiary, return Go away!' do 
    diary = Diary.new('some_contents')
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq 'Go away!'
  end

  xit 'given an unlocked SecretDiary, return contents' do
    diary = Diary.new('some_contents')
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq diary.read
  end

  xit 'given a locked SecretDiary, return Go away!' do
    diary = Diary.new('some_contents')
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect(secret_diary.read).to eq 'Go away!'
  end
end
