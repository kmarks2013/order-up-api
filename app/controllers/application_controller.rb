class ApplicationController < ActionController::API

    def hmac_secret
        ENV['JWT_SECRET_KEY']
    end

    def user_payload(user)
        {user_id: user.id}
    end

end
