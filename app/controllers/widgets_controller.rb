class WidgetsController < ApplicationController
  def index

   @corporateprofile = Corporateprofile.find_by(id: params[:id])

  end

end
