class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :preferred_schools
      t.text :message

      t.timestamps
    end
  end
end
