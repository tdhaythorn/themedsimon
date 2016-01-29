class UsersController < ApplicationController
  

  def index
      @users = User.paginate(page: params[:page], :per_page => 5).includes(:profile)
  end

  def show
  if params[:id] 
      @user = User.find(params[:id])
      # .includes(:profile)
    else 
      @user = current_user
    end
    @searches = Search.where(user_id: @user).includes(:state, city: [:profile])

  end


  def new
    @user = User.new
    #@corporateprofile = Corporateprofile.new

  end
  
  def create
    @user = User.new(user_params)
    #@corporateprofile = Corporateprofile.new(user_idparams)

    if @user.save
      session[:user_id] = @user.id
      #redirect_to '/corporate'
      redirect_to widgets_index_path
    else
      redirect to '/signup'
    end
  end
  
private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password)
  end



  
end