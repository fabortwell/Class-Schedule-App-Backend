class AnnouncementsController < ApplicationController
    def index
        render json: Announcement.all, only: [:title, :description, :technical_mentor_id, :comments]
    end

    def show
        announcement = Announcement.find_by(id: params[:id])
        if announcement
            render json: announcement 
        else
            render json: { error: "announcement not found" }, status: :not_found
        end
    end

    def create
        announcement = Announcement.create(params)
        render json: announcement, status: :created
    end

    def update
        announcement = Announcement.find(params[:id])
        announcement.update(params)
        render json: announcement, status: :updated
    end

    def destroy
        announcement = Announcement.find(params[:id])
        announcement.destroy
        head :no_content
    end

    private

    def announcement_params
        params.require(:announcement).permit(:title, :description, :technical_mentor_id, :comments)
    end
end
