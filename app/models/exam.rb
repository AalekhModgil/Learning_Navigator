class Exam < ApplicationRecord
  belongs_to :subject
  has_and_belongs_to_many :students
end
