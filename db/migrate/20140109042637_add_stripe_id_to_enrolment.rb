class AddStripeIdToEnrolment < ActiveRecord::Migration
  def change
    add_column :enrolments, :stripe_id, :string
  end
end
