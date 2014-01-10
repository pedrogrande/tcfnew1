class Intake < ActiveRecord::Base
  belongs_to :course

  def not_full
  	self.where(class_full: false)
  end
end
