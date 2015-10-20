class Subtask < ActiveRecord::Base
  belongs_to :goal
  
  validates :name, presence: true
end
