class CourseEnrolment < ActiveRecord::Base
  belongs_to :course
  belongs_to :enrolment
end
