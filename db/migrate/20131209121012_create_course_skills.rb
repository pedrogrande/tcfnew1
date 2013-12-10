class CreateCourseSkills < ActiveRecord::Migration
  def change
    create_table :course_skills do |t|
      t.references :course, index: true
      t.references :skill, index: true

      t.timestamps
    end
  end
end
