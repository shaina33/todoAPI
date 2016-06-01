class List < ActiveRecord::Base
  # attributes: name
  belongs_to :user
  has_many :items
end
