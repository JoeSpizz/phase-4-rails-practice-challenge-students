class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students, status: :ok 
    end

    def show 
        student = Student.find(params[:id])
        render json: student, status: :ok 
    end

    def create 
        student = Student.create(student_params)
        render json: student, status: :created 
    end

    def update 
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student, status: :accepted 
    end

    def destroy 
        student = Student.find(params[:id])
        student.destroy
        render json: student, status: :accepted
    end
         



    private 
    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end
end
