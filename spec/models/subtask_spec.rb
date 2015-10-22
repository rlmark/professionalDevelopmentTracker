require 'rails_helper'

RSpec.describe Subtask, type: :model do
  let(:user) { User.create!(first_name: "first",
                            last_name: "last",
                            email: "first_last@example.com",
                            password: "Password") }
  let(:goal) { Goal.create!(name: "Be better at the computerz",
                        status: "Created",
                        user_id: user.id) }
  let(:subtask) { Subtask.new(name: "do the code",
                          description: "subtask description",
                          status: "Created",
                          goal_id: goal.id) }

  describe ".validations" do
     it "must have name" do
      expect(subtask.valid?).to eq true
      subtask.name = nil
      expect(subtask.valid?).to eq false
    end

    it "must have a status" do
      expect(subtask.valid?).to eq true
      subtask.status = nil
      expect(subtask.valid?).to eq false
    end

    it "must be a valid status" do
      expect(subtask.valid?).to eq true
      subtask.status = "In-Progress"
      expect(subtask.valid?).to eq true
      subtask.status = "Done"
      expect(subtask.valid?).to eq true
      subtask.status = "On-Hold"
      expect(subtask.valid?).to eq true
      subtask.status = "Not valid"
      expect(subtask.valid?).to eq false
    end

    it "due date must not be in the past" do
      current_time = DateTime.now
      subtask.due_date = current_time - 1
      expect(subtask.valid?).to eq false
      subtask.due_date = current_time
      expect(subtask.valid?).to eq false
    end

    it "must be associated with a goal" do
      expect(subtask.valid?).to eq true
      subtask.goal_id = nil
      expect(subtask.valid?).to eq false
    end
  end
end
