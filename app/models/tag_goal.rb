class TagGoal < ActiveRecord::Base
  belongs_to :tag
  belongs_to :goal

  validates :goal, :tag, presence: true
end
