require 'secret_diary'

RSpec.describe 'Int Test:' do
  it 'creates instance of SecretDiary' do
    diary = double(:diary)
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary).to be
  end

  it 'given a new SecretDiary, return Go away!' do 
    diary = double(:diary)
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error 'Go away!'
  end

  it 'given an unlocked SecretDiary, return contents' do 
    diary = double(:diary, read: 'some_contents')
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq 'some_contents'
  end

  it 'given a locked SecretDiary, return Go away!' do
    diary = double(:diary)
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect { secret_diary.read }.to raise_error 'Go away!'
  end
end
