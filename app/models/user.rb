class User < ApplicationRecord
    #validations
    has_secure_password
    valdiates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false
    # validates :firstname, :presence => true
    # validates :lastname, :presence => true

end
