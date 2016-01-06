class CorporateprofilesController < ApplicationController
  
def new
    @corporateprofile = Corporateprofile.new
  end
  
  def create
    @corporateprofile = Corporateprofile.new(profile_params)
    if @corporateprofile.save
      redirect_to user_path(current_user)
    else
      render new_user_profiles
    end
  end
  
  def edit
    @corporateprofile = Corporateprofile.find(current_user.corporateprofile.id)
  end
  
  def update
    @corporateprofile = Corporateprofile.find(current_user.corporateprofile.id)
    if @corporateprofile.update_attributes(corporateprofile_params)
      flash[:success] = "Profile Updated"
      redirect_to current_user
    else
      flash.now[:error] = "Something went wrong" 
      render edit_user_corporateprofiles_path
    end
  end
  
  private

  def profile_params
    params.require(:corporateprofile).permit(:companyname, :companylogo,:companybanner,:companywebsite,:companyindustry,:companytype, :companyheadquarters,:companysize,:companyvideo,:aboutus,:city,:state,:country)
  end

end
