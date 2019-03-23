class SessionsController < ApplicationController
    def signin
    end

    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
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
