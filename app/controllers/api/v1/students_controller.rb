class Api::V1::StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def createStudent
    student = Student.new(student_params)
    if student.save
      render json: student, status: :created
    else
      render json: student.errors, status: :unprocessable_entity
    end
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end
end
