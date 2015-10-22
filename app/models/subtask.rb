class Subtask < ActiveRecord::Base
  belongs_to :goal
    
  validates :status, :name, :goal, presence: true
  validates :status, inclusion: { in: %w(Created In-Progress Done On-Hold),
  message: "Only accepts Created, In-Progress, Done, or On-Hold.", allow_blank: false}
  validate :due_date_cannot_be_in_past

  def due_date_cannot_be_in_past
    if due_date.present? && due_date < DateTime.now
      errors.add(:due_date, "can't be in the past")
    end
  end
end
