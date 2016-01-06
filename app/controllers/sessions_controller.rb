class SessionsController < ApplicationController
  
  def new
  end
  
  def destroy 
  session[:user_id] = nil 
  redirect_to '/login' 
  end
  
  def create
    @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to widgets_index_path
  else
    redirect_to '/login'
  end 
  
  
  def logged_in?
    !current_user.nil?
  end

  
end

end
