class AddSpecialToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :special, :boolean
  end
end
