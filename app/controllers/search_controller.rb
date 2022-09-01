class SearchController < ApplicationController
    def index
        q = params[:q]
        respond_to do |format|
          format.json { render json: Schedule.search(q) }
        end
    end
end
