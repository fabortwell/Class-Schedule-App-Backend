class StudentsController < ApplicationController

    def index
        render json: Student.all
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
