Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Custom route for creating a student
      post "students/create", to: "students#createStudent"
      post "subjects/create", to: "subjects#createSubject"
      post "exams/create", to: "exams#createExam"
    end
  end
end
