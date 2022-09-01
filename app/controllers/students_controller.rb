class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end
    
    def show
        student = Student.find_by(id: params[:id])
        if student
            render json: student 
        else
            render json: { error: "student not found" }, status: :not_found
        end
   end

    def create
        student = Student.create!(student_params)
        payload = student
        token = encode(payload)
        render json: {token: token}
    end

    def update
        student = Student.find(params[:id])
        if student 
            student.update!(student_params)
            render json: student
        else 
            render json: {error: "Student not found" }, status: :not_found
        end
    end

    private

    def student_params
        params.permit(:name, :email, :password, :password_confirmation, :phone_no, :avatar)
    end
end
