class Api::V1::SubjectsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def createSubject
    subject = Subject.new(subject_params)
    if subject.save
      render json: subject, status: :created
    else
      render json: subject.errors , status: :unprocessable_entity
    end
  end

  def subject_params
    params.require(:subject).permit(:subject_name)
  end
end
