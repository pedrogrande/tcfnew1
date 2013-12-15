class Course < ActiveRecord::Base
	has_many :intakes
	has_many :course_skills
	has_many :skills, through: :course_skills
	extend FriendlyId
    friendly_id :title, use: :slugged
    default_scope order: 'courses.priority ASC'

    def self.published
    	self.where(active: true)
    end

    def next_intake
    	self.intakes.where("start_date >= ?", Date.today)
    end

end
