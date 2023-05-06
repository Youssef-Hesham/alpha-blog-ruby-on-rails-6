class SessionsController < ApplicationController

    def new
    
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Logged in successfully"
            redirect_to user
        else
            flash.now[:notice] = "There was somthing Wrong with your login details"
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:alert] = "Logged out"
        redirect_to root_path
    end

end
    