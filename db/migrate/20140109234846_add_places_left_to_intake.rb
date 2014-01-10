class AddPlacesLeftToIntake < ActiveRecord::Migration
  def change
    add_column :intakes, :places_left, :integer
  end
end
