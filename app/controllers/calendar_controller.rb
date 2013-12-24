class CalendarController < ApplicationController
  def index
  	@this_months_intakes = false
  	@this_months_events = false
  	@next_months_intakes = Intake.where('start_date >= ? and start_date < ?', Date.today.end_of_month + 1, (Date.today.end_of_month + 1).end_of_month)
  	@next_months_events = Event.where('date >= ? and date < ?', Date.today.end_of_month + 1, (Date.today.end_of_month + 1).end_of_month)

  end
end
