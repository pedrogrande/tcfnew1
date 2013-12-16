class RemoveEnrolments < ActiveRecord::Migration
  def change
  	drop_table :enrolments
  end
end
