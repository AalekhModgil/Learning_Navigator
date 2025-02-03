class CreateStudentsExams < ActiveRecord::Migration[8.0]
  def change
    create_table :students_exams, id: false do |t|
      t.references :student, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
