class StudentsController < ApplicationController
    def create
        student = Student.create(student_params)
        if student.valid?
            session[:student_id] = student.id
            render json: student, status: :created
        else
            render json: { errors: student.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        render json: @current_student
    end

    private

    def student_params
        params.permit(:name, :email, :password, :password_confirmation, :phone_no)
    end
end
