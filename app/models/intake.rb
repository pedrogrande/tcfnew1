class Intake < ActiveRecord::Base
  belongs_to :course
    has_many :intake_enrolments
    has_many :enrolments, through: :intake_enrolments

    def future_intakes
    	self.where("start_date >= ?", Date.today).order(start_date: :asc)
    end
end
