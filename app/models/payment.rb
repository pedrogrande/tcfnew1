class Payment < ActiveRecord::Base
  belongs_to :enrolment
end
