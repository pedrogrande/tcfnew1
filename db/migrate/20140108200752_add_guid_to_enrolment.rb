class AddGuidToEnrolment < ActiveRecord::Migration
  def change
    add_column :enrolments, :guid, :string
  end
end
