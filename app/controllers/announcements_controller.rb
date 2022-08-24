class AnnouncementsController < ApplicationController
    def index
        render json: Announcement.all, only: [:title, :description]
    end
    def create
        announcement = Announcement.create(announcement_params)
        render json: announcement, status: :created
    end

    def update
        announcement = Announcement.find(params[:id])
        announcement.update(announcement_params)
        render json: announcement, status: :updated
    end

    def destroy
        announcement = Announcement.find(params[:id])
        announcement.destroy
        head :no_content
    end

    private

    def announcement_params
        params.require(:announcement).permit(:title, :description,:technical_mentor_id)
    end
end
