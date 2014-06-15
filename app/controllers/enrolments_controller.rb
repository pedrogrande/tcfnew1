class EnrolmentsController < ApplicationController
  before_action :set_enrolment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]
  require 'csv'

  def export
    @enrolments = Enrolment.all
    enrolments_csv = CSV.generate do |csv|
      csv << ["Id", "Name", "Email", "Phone", "LinkedIn", "About", "Study", "Career", "Reason", "Goals", 'guid']
      @enrolments.each do |enrolment|
        csv << [enrolment.id, enrolment.name, enrolment.email, enrolment.phone, enrolment.linkedin, enrolment.about, enrolment.study, enrolment.career, enrolment.reason, enrolment.goals, "http://newcoderfactory1a5d.ninefold-apps.com/transactions/new?guid=" + enrolment.guid.to_s]
      end
    end
    send_data(enrolments_csv, :type => 'text/csv', :filename => 'all_enrolments.csv')
   end
  # GET /enrolments
  # GET /enrolments.json
  def index
    @enrolments = Enrolment.all
  end

  # GET /enrolments/1
  # GET /enrolments/1.json
  def show
  end

  # GET /enrolments/new
  def new
    @enrolment = Enrolment.new
    @courses = Course.ordered_by_course_order
  end

  # GET /enrolments/1/edit
  def edit
  end

  # POST /enrolments
  # POST /enrolments.json
  def create
    @enrolment = Enrolment.new(enrolment_params)
    @enrolment.intakes.each do |intake|
      @enrolment.courses << intake.course
    end
    
    @courses = Course.ordered_by_course_order
      respond_to do |format|
        if @enrolment.save
          EnrolmentMailer.received(@enrolment).deliver
          format.html {redirect_to new_transaction_path(guid: @enrolment.guid)}
          format.json {
            render json: @enrolment,
              status: :created,
              location: @enrolment
          }
        else
          format.html { render 'new' }
          format.json {
            render json: @enrolment.errors,
              status: :unprocessable_entity
          }
        end
        
        
      end
    # respond_to do |format|
    #   if @enrolment.save
    #     # EnrolmentMailer.response(@enrolment).deliver
    #     # EnrolmentMailer.received(@enrolment).deliver
    #     format.html { redirect_to new_transactions_path, notice: 'You are now enrolled in The Coder Factory!' }
    #     format.json { render action: 'show', status: :created, location: @enrolment }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @enrolment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /enrolments/1
  # PATCH/PUT /enrolments/1.json
  def update
    respond_to do |format|
      if @enrolment.update(enrolment_params)
        format.html { redirect_to new_transaction_path(guid: @enrolment.guid) }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolments/1
  # DELETE /enrolments/1.json
  def destroy
    @enrolment.destroy
    respond_to do |format|
      format.html { redirect_to enrolments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolment
      @enrolment = Enrolment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolment_params
      params.require(:enrolment).permit(:name, :email, :phone, :linkedin, :github, :about, :study, :career, :reason, :goals, :follow_up, :course_ids => [], :intake_ids => [])
    end
end
