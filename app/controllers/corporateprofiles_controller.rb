class CorporateprofilesController < ApplicationController

before_action :require_user
respond_to :html, :json


  def show
      @corporateprofile = Corporateprofile.find(current_user.corporateprofile.id)
  end
  
  def edit
      @corporateprofile = Corporateprofile.find(current_user.corporateprofile.id)
  end

  def update
      @corporateprofile = Corporateprofile.find_by(id: params[:id])
      @corporateprofile.update_attributes(corporateprofile_params)
      respond_with @corporateprofile
   end
  
  #def update - For before the gem for linkedin style editing
   #   @corporateprofile = Corporateprofile.find_by(id: params[:id])
    #if @corporateprofile.update_attributes(corporateprofile_params)
    #  flash[:success] = "Profile Updated"
    #  redirect_to show_user_corporateprofiles_path
    #else
    #  flash.now[:error] = "Something went wrong" 
    #  render edit_user_corporateprofiles_path
    #end
  #end
  
  private

  def corporateprofile_params
    params.require(:corporateprofile).permit(:status, :companyname, :companylogo, :companybanner, :companymotto, :companywebsite, :companyindustry,:companyhiringstatus, :companytype, :companyheadquarters, :companysize, :companyvideo, :aboutus, :ourpeople, :country, :state)
  end

end
