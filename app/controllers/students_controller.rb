class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.sort_by { |obj| -obj.grade}
        render json: students
    end


end
