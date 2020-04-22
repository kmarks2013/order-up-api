class UsersController < ApplicationController

    def create
        user = User.create(user_params)
    end

    private
    def user_params
        params.permit(:firstname, :lastname, :username, :password, :address, :email, :phone)
    end

end
