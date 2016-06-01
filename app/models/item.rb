class Item < ActiveRecord::Base
  # attributes: description, priority
  belongs_to :list
end
