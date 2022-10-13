class InstructorsController < ApplicationController
    def index 
        instructors = Instructor.all 
        render json: instructors, status: :ok 
    end

    def show 
        instructor = Instructor.find(params[:id])
        render json: instructor, status: :ok 
    end

    def create 
        instructor = Instructor.create(instructor_params)
        render json: instructor, status: :created 
    end

    def update 
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
        render json: instructor, status: :accepted 
    end

    def destroy 
        instructor = Instructor.find(params[:id])
        instructor.destroy
        render json: instructor, status: :accepted
    end
         



    private 
    def instructor_params
        params.permit(:name)
    end
end
