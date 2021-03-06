class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            render json: {token: encode_token(user_payload(user))}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.permit(:firstname, :lastname, :username, :password, :address, :email, :phone)
    end

end
