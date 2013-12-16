class ProgrammeRequest < ActiveRecord::Base
	has_many :course_programme_requests
    has_many :courses, through: :course_programme_requests

    validates :name, :email, :courses, presence: true
end
