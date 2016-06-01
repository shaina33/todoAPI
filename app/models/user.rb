class User < ActiveRecord::Base
    #attributes: first_name, last_name, email, username, password
    has_many :lists
    
    validates :username, presence: true
    validates :password, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    
    def full_name
        first_name + " " + last_name
    end
end
