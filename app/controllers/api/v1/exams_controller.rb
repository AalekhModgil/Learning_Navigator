class Api::V1::ExamsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def createExam
    subject = Subject.find_by(id:exam_params[:subject_id])
    if subject.nil?
      render json: {error: "Subject not found"}, status: :not_found
    else
      exam = Exam.create(exam_params)
      if exam.save
        render json: exam, status: :created
      else
        render json: exam.errors, status: :unprocessabe_entity
      end
    end
  end

  def exam_params
    params.require(:exam).permit(:subject_id)
  end
end
