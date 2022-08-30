class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end
    
    def show
     render json: @student
   end

    def create
        student = Student.create!(student_params)
        payload = student
        token = encode(payload)
        render json: {token: token}
    end

    private

    def student_params
        params.permit(:name, :email, :password, :password_confirmation, :phone_no)
    end
end
