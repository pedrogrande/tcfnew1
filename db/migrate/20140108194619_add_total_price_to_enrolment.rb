class AddTotalPriceToEnrolment < ActiveRecord::Migration
  def change
    add_column :enrolments, :total_price, :integer
  end
end
