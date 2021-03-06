class AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        is_authenticated = user.authenticate(params[:password])
        if is_authenticated
            render json: {token: encode_token(user_payload(user))}
        else
            render json: {error: "Wrong username/password. Please try again."}
        end
    end

end
