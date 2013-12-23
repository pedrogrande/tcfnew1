class Course < ActiveRecord::Base
	has_many :intakes
	has_many :course_skills
	has_many :skills, through: :course_skills
    has_many :course_programme_requests
    has_many :programme_requests, through: :course_programme_requests
    has_many :course_enrolments
    has_many :enrolments, through: :course_enrolments
	extend FriendlyId
    friendly_id :title, use: :slugged
    default_scope order: 'courses.priority ASC'
    mount_uploader :programme, ProgrammeOutlineUploader
    mount_uploader :image, PostImageUploader
    def self.published
    	self.where(active: true)
    end

    def next_intake
    	self.intakes.where("start_date >= ?", Date.today)
    end

    def any_courses_starting_this_month?
        true
    end

end
