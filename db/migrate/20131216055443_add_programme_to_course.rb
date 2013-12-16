class AddProgrammeToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :programme, :string
  end
end
