class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :tag_goals
  has_many :tags, through: :tag_goals

  validates :name, presence: true
end
