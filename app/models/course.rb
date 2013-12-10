class Course < ActiveRecord::Base
	has_many :intakes
	has_many :course_skills
	has_many :skills, through: :course_skills
end
