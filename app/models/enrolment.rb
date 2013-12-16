class Enrolment < ActiveRecord::Base
	has_many :course_enrolments
    has_many :courses, through: :course_enrolments

    validates :name, :email, :courses, presence: true
end
