class SessionsController < ApplicationController
    def signin
    end

    def create
        if user = User.authenticate_with_credentials(params[:email], params[:password])
            session[:user_id] = user.id
            redirect_to '/'
        else
            render :signin
        end
    end

    def signout
        session.delete(:user_id)
        redirect_to '/signin'
    end
end
