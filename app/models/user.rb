class User < ApplicationRecord
    #validations
    has_secure_password
end
