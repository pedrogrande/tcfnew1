class VolunteerSchool < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :code_club_school
end
