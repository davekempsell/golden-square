require 'task_formatter'

RSpec.describe TaskFormatter do
  context "when task being formatted is incomplete" do
    it "TaskFormatter shows it is incomplete" do
      task = double :task, title: "my_title"
      expect(task).to receive(:complete?).and_return(false)
      formatter = TaskFormatter.new(task)
      expect(formatter.format).to eq "- [ ] #{task.title}"
    end
  end

  context "when task being formatted is complete" do
    it "TaskFormatter shows it is complete" do
      task = double :task, title: "my_title"
      allow(task).to receive(:mark_complete)
      expect(task).to receive(:complete?).and_return(true)
      formatter = TaskFormatter.new(task)
      task.mark_complete
      expect(formatter.format).to eq "- [x] #{task.title}"
    end
  end
end