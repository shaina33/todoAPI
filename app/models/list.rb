class List < ActiveRecord::Base
  # attributes: name
  belongs_to :user
  has_many :items
  
  validates :name, presence: true
  validates :user_id, presence: true
end
