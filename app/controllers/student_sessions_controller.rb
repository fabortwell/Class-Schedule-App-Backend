class StudentSessionsController < ApplicationController
    def create
        student = Student.find_by(name: params[:name])
        if student&.authenticate(params[:password])
            payload = student
            token = encode(payload)
            render json: {token: token}, status: :created
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    # def destroy
    #     student = Student.find_by(id: session[:student_id])
    #     if student
    #       session.delete :student_id
    #       head :no_content
    #     else
    #         return render json: { errors: "Not authorized" }, status: :unauthorized
    #     end
    # end
end
