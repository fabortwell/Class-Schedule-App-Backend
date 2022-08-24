class TechnicalMentorSessionController < ApplicationController
    def create
        technical_mentor = TechnicalMentor.find_by(name: params[:name])
        if technical_mentor&.authenticate(params[:password])
            session[:technical_mentor_id] = technical_mentor.id
            render json: technical_mentor, status: :created
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    def destroy
        technical_mentor = TechnicalMentor.find_by(id: session[:technical_mentor_id])
        if technical_mentor
          session.delete :technical_mentor_id
          head :no_content
        else
            return render json: { errors: "Not authorized" }, status: :unauthorized
        end
    end
end
