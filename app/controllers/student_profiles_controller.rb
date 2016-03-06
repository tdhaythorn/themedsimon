class Student_ProfilesController < ApplicationController

before_action :require_user
respond_to :html, :json


  def show
      @studentprofile = StudentProfile.find(current_user.studentprofile.id)
  end
  
  def edit
      @studentprofile = StudentProfile.find(current_user.studentprofile.id)
  end

  def update
      @studentprofile = StudentProfile.find_by(id: params[:id])
      @studentprofile.update_attributes(student_profile_params)
      respond_with @studentprofile
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

  def student_profile_params
    params.require(:studentprofile).permit(:status, :companyname, :companylogo, :companybanner, :companymotto, :companywebsite, :companyindustry,:companyhiringstatus, :companytype, :companyheadquarters, :companysize, :companyvideo, :aboutus, :ourpeople, :country, :state)
  end

end
