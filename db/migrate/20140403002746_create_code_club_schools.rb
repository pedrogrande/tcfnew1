class CreateCodeClubSchools < ActiveRecord::Migration
  def change
    create_table :code_club_schools do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode

      t.timestamps
    end
  end
end
