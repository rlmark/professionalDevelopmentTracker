require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:user) { User.create!(first_name: "first",
                            last_name: "last",
                            email: "first_last@example.com",
                            password: "Password") }
  let(:goal) { Goal.new(name: "Be better at the computerz",
                        status: "Created",
                        user_id: user.id) }

  describe ".validations" do
     it "must have name" do
      expect(goal.valid?).to eq true
      goal.name = nil
      expect(goal.valid?).to eq false
    end

    it "must have a status" do
      expect(goal.valid?).to eq true
      goal.status = nil
      expect(goal.valid?).to eq false
    end

    it "must be a valid status" do
      expect(goal.valid?).to eq true
      goal.status = "In-Progress"
      expect(goal.valid?).to eq true
      goal.status = "Done"
      expect(goal.valid?).to eq true
      goal.status = "On-Hold"
      expect(goal.valid?).to eq true
      goal.status = "Not valid"
      expect(goal.valid?).to eq false
    end

    it "due date must not be in the past" do
      current_time = DateTime.now
      goal.due_date = current_time - 1
      expect(goal.valid?).to eq false
      goal.due_date = current_time
      expect(goal.valid?).to eq false
    end

    it "must be associated with a user" do
      expect(goal.valid?).to eq true
      goal.user_id = nil
      expect(goal.valid?).to eq false
    end
  end
end
