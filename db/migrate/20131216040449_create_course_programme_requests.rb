class CreateCourseProgrammeRequests < ActiveRecord::Migration
  def change
    create_table :course_programme_requests do |t|
      t.references :programme_request, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
