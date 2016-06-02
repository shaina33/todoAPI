class Item < ActiveRecord::Base
  # attributes: description, priority, completed
  belongs_to :list
  
  after_initialize :set_default_values
  
  validates :description, presence: true
  validates :priority, inclusion: { in: %w(1, 2, 3),
    message: "Item priority must be '1', '2', or '3'." }
  validates :list_id, presence: true

  def set_default_values
    self.priority ||= "2"
    self.completed ||= false
  end
  
end
