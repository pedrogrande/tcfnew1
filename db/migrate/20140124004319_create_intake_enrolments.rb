class CreateIntakeEnrolments < ActiveRecord::Migration
  def change
    create_table :intake_enrolments do |t|
      t.references :intake, index: true
      t.references :enrolment, index: true

      t.timestamps
    end
  end
end
