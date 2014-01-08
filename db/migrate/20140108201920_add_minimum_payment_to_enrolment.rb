class AddMinimumPaymentToEnrolment < ActiveRecord::Migration
  def change
    add_column :enrolments, :minimum_payment, :integer
  end
end
