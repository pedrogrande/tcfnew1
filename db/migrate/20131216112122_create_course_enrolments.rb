class CreateCourseEnrolments < ActiveRecord::Migration
  def change
    create_table :course_enrolments do |t|
      t.references :course, index: true
      t.references :enrolment, index: true

      t.timestamps
    end
  end
end
