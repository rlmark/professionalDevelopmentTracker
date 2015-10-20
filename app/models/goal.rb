class Goal < ActiveRecord::Base
  belongs_to :user
  
  has_many :subtasks
  validates :name, presence: true
end
