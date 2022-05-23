{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────────────────┐
│                                        │
│ Diary                                  │
│ -----                                  │
│                                        |
| add DiaryEntry to Diary                │
│ read previous DiaryEntry               │
│ select DiaryEntry by time and speed    │
│ show list of all mobile phone numbers  │
│                                        │
└──────────────▲─────────────────────────┘
               │
               │Diary has zero or more
               │DiaryEntrys
               │
┌──────────────▼────────────────────────┐
│                                       │
│  DiaryEntry                           │
│  ----------                           │
│                                       │
│  create entry                         │
│  show title as string                 │
│  show contents as string              │
│  add contact/mobile number            │
│  show length of entry                 │
│  show time to read entry              │
│                                       │
└───────────────────────────────────────┘


┌──────────────────────────────┐
│                              │
│  TodoList                    │
│  --------                    │
│  add tasks                   │
│  show list of tasks          │
│                              │
│                              │
└──────────────────────────────┘

Also design the interface of each class in more detail.

# File: lib/diary.rb
class Diary
  def initialize
  end

  def add(entry) #entry is instance of DiaryEntry
    # add instance of DiaryEntry to diary
  end
  
  def read_entry(entry) #entry is instance of DiaryEntry
    #display contents of selected DiaryEntry
  end

  def best_entry_for_time(wpm, minutes)
    # select the longest entry that can be read in the given time, 
    # at the given reading speed
  end

  def show_contacts
    # return list of contact and mobile phone numbers
  end
end

# File: lib/diary_entry.rb
class DiaryEntry 
  def initialize(title, contents)
    @contact_list = []
  end

  def title
    #show title as string
  end

  def contents
    #show contents as a string
  end

  def add_contact(contact_name, mobile_number)
    # store contact in contact list
  end

  def entry_length
    #show number of words in contents of entry
  end

  def time_to_read(wpm)
    # returns time to read contents based on provided wpm
  end

end

# File: lib/todo_list.rb
class TodoList
  def add(task) # task will be a string
    # add task to list
  end

  def show_list
    # show all tasks in list
  end
end

3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# Diary class
# 1. returns previously added DiaryEntry
my_diary = Diary.new
entry_1 = DiaryEntry.new("Title_1","Some contents and words")
my_diary.add(entry_1)
my_diary.read_entry(entry_1) # => "Some contents and words"

# 2. returns list of contacts
my_diary = Diary.new
entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
entry_1.add_contact("Dave", "07850123456")
entry_2.add_contact("Steve", "07900123321)
my_diary.add(entry_1)
my_diary.add(entry_2)
my_diary.show_contacts # => [["Dave", "07850123456"],["Steve", "07900123321"]]

# 3. returns message that there are no contacts if Diary doesn't include any
my_diary = Diary.new
entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
my_diary.add(entry_1)
my_diary.add(entry_2)
my_diary.show_contacts # => "No contacts are stored in Diary."

# 4. returns the longest entry that can be read in the given time, at a given reading speed
my_diary = Diary.new
entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
entry_2 = DiaryEntry.new("Title_2", "Some more contents and other words")
entry_3 = DiaryEntry.new("Title_3", "One two three four five six seven eight nine ten.")
my_diary.best_entry_for_time(2,4) # => entry_2

# 5. returns message that no entries can be read, if given time is too short
my_diary = Diary.new
entry_3 = DiaryEntry.new("Title_3", "One two three four five six seven eight nine ten.")
my_diary.best_entry_for_time(2,4) # => "No entries can be read in given time."


4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# Diary class
# 1. fails if try to read an entry that isn't present
my_diary = Diary.new
my_diary.read_entry(entry_1) # => "Entry isn't present within Diary"

# 2. fails if best_entry_for_time is called with 0 wpm
my_diary = Diary.new
my_diary.best_entry_for_time(0,2) # => "wpm must be greater than 0"

# DiaryEntry class
# 1. returns number of words in contents
entry_1 = DiaryEntry.new("Title_1", "Some contents and words")
entry_1.entry_length # => 4

# 2. returns time to read entry, for a given reading speed
entry_1 = DiaryEntry.new("Title_1", "Some contents and more words")
entry_1.time_to_read(2) # => 3

# 3. fails if wpm is given as 0
entry_1 = DiaryEntry.new("Title_1", "Some contents and more words")
entry_1.time_to_read(0) # => "wpm must be greater than 0"

# TodoList class
# 1. returns all tasks in list
my_list = TodoList.new
my_list.add("Do a thing.")
my_list.add("Do another thing.")
my_list.show_list # => ["Do a thing.", "Do another thing."]


5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.