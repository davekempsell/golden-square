require "todo"

RSpec.describe Todo do
  context "no string is passed to class" do
    it "fails" do
      expect { task = Todo.new("") }.to raise_error "Todo must have a task"
    end
  end

  context "valid string is passed to class" do
    it "returns task as string when task method called" do
      task_1 = Todo.new("Do this thing")
      expect(task_1.task).to eq "Do this thing"
    end

    describe "done? method" do
      it "returns true if task is done" do
        task_1 = Todo.new("Do this thing")
        task_1.mark_done!
        expect(task_1.done?).to eq true
      end
      it "returns false if task is not done" do
        task_1 = Todo.new("Do this thing")
        expect(task_1.done?).to eq false
      end
    end

    describe "#status method" do
      it "returns status of task as a string" do
      task_1 = Todo.new("Do this thing")
      expect(task_1.status).to eq "incomplete"
      end
    end
  end
end
