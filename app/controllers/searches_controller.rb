class SearchesController < ApplicationController
    
before_action :require_user
    

    def new
        @states = State.all
        @cities = City.all
        @languages = Language.all
        @search = Search.new
    end
    
    def create
    @search = current_user.searches.create(search_params)

    redirect_to user_search_path(current_user, @search)
    end

    def show
        @search = current_user.searches.find_by(id: params[:id])
    end

    #Deleting searches, tied to the "delete link" on the view
    def destroy
        @search.destroy
        flash[:success] = "Micropost deleted"
        redirect_to request.referrer || @searches
    end

    #RECENT SEARCHES

    def recent
        @recent = current_user.searches
    end
    
    private
    
    def search_params
        params.require(:search).permit(:searchname, :city, :min_gpa, :max_gpa, :firstname, :state, :city, :age, :gender, :universityname, :language, :livingin, :workexperience, :monthsspentabroadliving, :monthsspentabroadworking, :degree , :degreetype, :countryofdegree, :wantstoworkin, :hasworkexperiencein, :permissiontoworkin, :currentlyemployed, :referencesuponrequest, :worktype, :charitywork)
    end
    
    
end
