class User < ActiveRecord::Base
    #attributes: first_name, last_name, email, username, password
    has_many :lists
    
    def full_name
        first_name + " " + last_name
    end
end
