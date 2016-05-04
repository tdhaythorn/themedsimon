class CorporateProfilesController < ApplicationController

before_action :require_user
respond_to :html, :json


  def show
      @corporateprofile = CorporateProfile.find(current_user.corporate_profile.id)
  end
  
  def edit
      @corporateprofile = CorporateProfile.find(current_user.corporate_profile.id)
  end
  
  def update 
      @corporateprofile = Corporateprofile.find_by(id: params[:id])
    if @corporateprofile.update_attributes(corporate_profile_params)
      flash[:success] = "Profile Updated"
      redirect_to show_corporate_profiles_path
    else
      flash.now[:error] = "Something went wrong" 
      render edit_corporate_profiles_path
    end
  end
  
  private

  def corporate_profile_params
    params.require(:corporateprofile).permit(:status, :companyname, :companylogo, :companybanner, :companymotto, :companywebsite, :companyindustry,:companyhiringstatus, :companytype, :companyheadquarters, :companysize, :companyvideo, :aboutus, :ourpeople, :country, :state)
  end

  #def update
      #@corporateprofile = CorporateProfile.find_by(id: params[:id])
     # @corporateprofile = CorporateProfile.find_by(current_user.corporate_profile.id)

    #  @corporateprofile.update_attributes(corporate_profile_params)
    #  respond_with @corporateprofile
   #end

end
