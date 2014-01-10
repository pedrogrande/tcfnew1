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
    mount_uploader :programme, ProgrammeOutlineUploader
    mount_uploader :image, PostImageUploader

    def self.ordered_by_course_order
        order(course_order: :asc)
    end

    def self.published
    	self.where(active: true)
    end

    def future_intakes
    	self.intakes.where("start_date >= ?", Date.today).order(start_date: :asc)
    end

    def any_courses_starting_this_month?
        true
    end

    

end
