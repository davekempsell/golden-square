# Diary class
# 1. creates instance of Diary
diary = Diary.new('some_contents')
expect(diary).to be

# 2. given a new Diary, returns contents of Diary
diary = Diary.new('some_contents')
expect(diary.read).to eq 'some_contents'

# SecretDiary class
# 1. creates instance of SecretDiary
diary = Diary.new('some_contents')
secret_diary = SecretDiary.new(diary)
expect(secret_diary).to be
# 2. given a new SecretDiary, return 'Go away!'
diary = Diary.new('some_contents')
secret_diary = SecretDiary.new(diary)
expect(secret_diary.read).to eq 'Go away!'

# 3. given an unlocked SecretDiary, return contents
diary = Diary.new('some_contents')
secret_diary = SecretDiary.new(diary)
secret_diary.unlock
expect(secret_diary.read).to eq diary.read

# 4. given a locked SecretDiary, return 'Go away!'
diary = Diary.new('some_contents')
secret_diary = SecretDiary.new(diary)
secret_diary.unlock
secret_diary.lock
expect(secret_diary.read).to eq 'Go away!'