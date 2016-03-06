class WidgetsController < ApplicationController
  def index

   @corporateprofile = CorporateProfile.find_by(id: params[:id])

  end

end
