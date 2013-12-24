class AddHighlightToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :highlight, :boolean
  end
end
