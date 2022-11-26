class StudentsController < ApplicationController
    def index
        students = Student.all

        render json: students
    end

    def grades
        student_grades = Student.all.sort_by{|student| student["grade"]}

        render json: student_grades
    end

    def highest_grade
        top_scorer =  Student.all.sort_by{|student| student["grade"]}.last

        render json: top_scorer
    end
end
