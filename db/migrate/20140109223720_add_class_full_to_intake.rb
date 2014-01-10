class AddClassFullToIntake < ActiveRecord::Migration
  def change
    add_column :intakes, :class_full, :boolean
  end
end
