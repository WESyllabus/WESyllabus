class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_title
      t.string :originating_department
      t.string :course_code
      t.string :credit_value
      t.string :course_type
      t.string :semester
      t.string :teaching_language
      t.string :instructor
      t.string :in_email
      t.string :tutor
      t.string :tu_email
      t.string :outline

      t.timestamps
    end
  end
end
