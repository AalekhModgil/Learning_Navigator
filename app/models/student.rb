class Student < ApplicationRecord
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :exams
end
