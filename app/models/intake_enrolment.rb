class IntakeEnrolment < ActiveRecord::Base
  belongs_to :intake
  belongs_to :enrolment
end
