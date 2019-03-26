class UsersController < ApplicationController
    def register
        @user = User.new
    end
    
    def create
        input_param = user_params
        @user = User.new(
            first_name: input_param[:first_name].strip,
            last_name: input_param[:last_name].strip,
            email: input_param[:email].strip,
            password: input_param[:password]
        )
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/', notice: 'Registration Success!'
        else
            render :register
        end
    end

    private
    def user_params
        params.require(:user).permit(
            :first_name,
            :last_name,
            :email,
            :password
        )
    end
end
