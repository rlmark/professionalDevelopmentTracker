class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :subtasks
  accepts_nested_attributes_for :subtasks, allow_destroy: true, reject_if: :all_blank
  has_many :tag_goals
  has_many :tags, through: :tag_goals

  validates :name, presence: true
  
  def subtasks_attributes(subtask_attributes)
    subtask_attributes.each do |attributes| 
      subtasks.build(attributes)
    end 
  end
end
