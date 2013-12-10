class Skill < ActiveRecord::Base
	has_many :course_skills
	has_many :courses, through: :course_skills
end
