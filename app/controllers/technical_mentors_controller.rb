class TechnicalMentorsController < ApplicationController 

    def create
        technical_mentor = TechnicalMentor.create(technical_mentor_params)
         if technical_mentor.valid?
            session[:technical_mentor_id] = technical_mentor.id
            render json: technical_mentor, status: :created
        else
            render json: { errors: technical_mentor.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        render json: @current_technical_mentor 
    end

    def update
        technical_mentor = TechnicalMentor.find(params[:id])
        if technical_mentor
            technical_mentor.update(technical_mentor_params)
            render json: technical_mentor
        else 
            render {error: "TechnicalMentor not found" }, status: :not_found
        end
    end



    


    private

    def technical_mentor_params
        params.permit(:name, :password, :email, :phone_no)
    end
end
