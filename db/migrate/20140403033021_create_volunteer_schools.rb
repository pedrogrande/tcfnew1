class CreateVolunteerSchools < ActiveRecord::Migration
  def change
    create_table :volunteer_schools do |t|
      t.references :volunteer, index: true
      t.references :code_club_school, index: true

      t.timestamps
    end
  end
end
