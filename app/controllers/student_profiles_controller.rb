class StudentProfilesController < ApplicationController

before_action :require_user
respond_to :html, :json


  def show
      @studentprofile = StudentProfile.find(current_user.student_profile.id)
  end
  
  def edit
      @studentprofile = StudentProfile.find(current_user.student_profile.id)
  end
  
  def update 
      @corporateprofile = StudentProfile.find_by(id: params[:id])
    if @corporateprofile.update_attributes(student_profile_params)
      flash[:success] = "Profile Updated"
      redirect_to show_student_profiles_path
    else
      flash.now[:error] = "Something went wrong" 
      render edit_student_profiles_path
    end
  end
  
  private

  def student_profile_params
    params.require(:studentprofile).permit(:status, :companyname, :companylogo, :companybanner, :companymotto, :companywebsite, :companyindustry,:companyhiringstatus, :companytype, :companyheadquarters, :companysize, :companyvideo, :aboutus, :ourpeople, :country, :state)
  end

end
