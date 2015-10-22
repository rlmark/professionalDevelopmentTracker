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
  
  validates :status, :name, :user, presence: true
  validates :status, inclusion: { in: %w(Created In-Progress Done On-Hold),
  message: "Only accepts Created, In-Progress, Done, or On-Hold.", allow_blank: false}
  validate :due_date_cannot_be_in_past
  accepts_nested_attributes_for :tag_goals

  def due_date_cannot_be_in_past
    if due_date.present? && due_date < DateTime.now
      errors.add(:due_date, "can't be in the past")
    end
  end
  
end
