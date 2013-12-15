class AddColsToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :active, :boolean
    add_column :courses, :priority, :integer
  end
end
