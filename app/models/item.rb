class Item < ActiveRecord::Base
  # attributes: description, priority
  belongs_to :list
  
  validates :description, presence: true
  validates :priority, presence: true
  validates :list_id, presence: true 
  
end
