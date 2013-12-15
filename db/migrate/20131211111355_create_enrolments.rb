class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :referrer

      t.timestamps
    end
  end
end
