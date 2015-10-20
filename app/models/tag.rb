class Tag < ActiveRecord::Base
  has_many :tag_goals
  has_many :goals, through: :tag_goals

end
