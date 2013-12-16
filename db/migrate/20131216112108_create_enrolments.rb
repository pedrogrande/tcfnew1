class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :linkedin
      t.string :github
      t.text :about
      t.text :study
      t.text :career
      t.text :reason
      t.text :goals
      t.boolean :follow_up

      t.timestamps
    end
  end
end
