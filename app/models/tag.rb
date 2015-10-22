class Tag < ActiveRecord::Base
  has_many :tag_goals
  has_many :goals, through: :tag_goals
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def self.order_tags
    self.all.sort_by { |a| a.name }
  end

  def self.all_tag_names
    self.order_tags.map(&:name).uniq.reject(&:blank?)
  end
end
