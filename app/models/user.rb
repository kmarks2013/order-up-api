class User < ApplicationRecord
    # password validations
    PASSWORD_FORMAT = /\A
        (?=.*[A-Z])
        (?=.*[a-z])
        (?=.*\d)
        (?=.*[[:^alnum:]])
    /x
    has_secure_password
    validates :password, :length => {:minimum => 6 }
    validates :password, format: {with: PASSWORD_FORMAT, :message =>'Password must include: 1 uppercase, 1 lowercase, 1 digit, and 1 special character.'}

    #username validations
    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false
    validates :username, :length => {:in => 6..25}
    # validates :firstname, :presence => true
    # validates :lastname, :presence => true

end
