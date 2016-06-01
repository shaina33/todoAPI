class Item < ActiveRecord::Base
  # attributes: description, priority, completed
  belongs_to :list
  
  after_initialize :set_default_values
  
  validates :description, presence: true
  validates :priority, presence: true
  validates :list_id, presence: true
  #validates :completed, presence: true
  
  def set_default_values
    self.priority ||= "2"
    self.completed ||= false
  end
  
end
