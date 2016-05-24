class User < ActiveRecord::Base
    has_many :lists
    
    def full_name
        first_name + " " + last_name
    end
end
