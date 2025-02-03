class CreateStudentsSubjects < ActiveRecord::Migration[8.0]
  def change
    create_table :students_subjects, id: false do |t|
      t.references :student, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
