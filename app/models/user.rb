class User < ApplicationRecord
    #validations
    has_secure_password
    valdiates_presence_of :username

end
