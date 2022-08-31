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
end
