class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email
  # has_many :lists
  
  def full_name
    object.full_name
  end
  
end
