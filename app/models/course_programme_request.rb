class CourseProgrammeRequest < ActiveRecord::Base
  belongs_to :programme_request
  belongs_to :course
end
