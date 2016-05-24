class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :priority
#   has_one :list
end
