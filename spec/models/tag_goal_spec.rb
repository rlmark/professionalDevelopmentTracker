require 'rails_helper'

RSpec.describe TagGoal, type: :model do
  let(:user) { User.create!(first_name: "first",
                            last_name: "last",
                            email: "first_last@example.com",
                            password: "Password") }
  let(:goal) { Goal.create!(name: "Be better at the computerz",
                        status: "Created",
                        user_id: user.id) }
  let(:tag) { Tag.create!(name: "Interwebs") }
  let(:tag_goal) { TagGoal.new(goal_id: goal.id, tag_id: tag.id) }

  describe ".validations" do
    it "must be associated with a goal" do
      expect(tag_goal.valid?).to eq true
      tag_goal.goal_id = nil
      expect(tag_goal.valid?).to eq false
      tag_goal.goal_id = goal.id + 1
      expect(tag_goal.valid?).to eq false
    end

    it "must be associated with a tag" do
      expect(tag_goal.valid?).to eq true
      tag_goal.tag_id = nil
      expect(tag_goal.valid?).to eq false
      tag_goal.tag_id = tag.id + 1
      expect(tag_goal.valid?).to eq false
    end
  end
end
