class Enrolment < ActiveRecord::Base
	has_many :course_enrolments
    has_many :courses, through: :course_enrolments
    has_many :payments
    validates :name, :email, :courses, presence: true
    has_many :intake_enrolments
    has_many :intakes, through: :intake_enrolments
    before_create :populate_guid
    before_save :get_total_price

    validates :intakes, presence: true
    private
      def populate_guid
        self.guid = SecureRandom.uuid()
      end

      def get_total_price
      	self.total_price = (self.courses.map {|s| s['price']}.reduce(0, :+)) * 100
      end
end
