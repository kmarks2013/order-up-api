class User < ApplicationRecord
    #validations
    has_secure_password
    valdiates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false
    validates :username, :length => {:in => 6..25}
    # validates :firstname, :presence => true
    # validates :lastname, :presence => true

end
