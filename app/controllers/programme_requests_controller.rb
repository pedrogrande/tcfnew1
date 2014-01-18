class ProgrammeRequestsController < ApplicationController
  before_action :set_programme_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]
  # GET /programme_requests
  # GET /programme_requests.json
  def index
    @programme_requests = ProgrammeRequest.all
  end

  # GET /programme_requests/1
  # GET /programme_requests/1.json
  def show
  end

  # GET /programme_requests/new
  def new
    @programme_request = ProgrammeRequest.new
    @active_courses = Course.active_courses
  end

  # GET /programme_requests/1/edit
  def edit
  end

  # POST /programme_requests
  # POST /programme_requests.json
  def create
    @programme_request = ProgrammeRequest.new(programme_request_params)

    respond_to do |format|
      if @programme_request.save
        DownloadProgramme.response(@programme_request).deliver
        DownloadProgramme.received(@programme_request).deliver
        format.html { redirect_to thanks_path, notice: 'Your programme outlines are on their way to you now.' }
        format.json { render action: 'show', status: :created, location: @programme_request }
      else
        format.html { render action: 'new' }
        format.json { render json: @programme_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programme_requests/1
  # PATCH/PUT /programme_requests/1.json
  def update
    respond_to do |format|
      if @programme_request.update(programme_request_params)
        format.html { redirect_to @programme_request, notice: 'Programme request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programme_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programme_requests/1
  # DELETE /programme_requests/1.json
  def destroy
    @programme_request.destroy
    respond_to do |format|
      format.html { redirect_to programme_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme_request
      @programme_request = ProgrammeRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme_request_params
      params.require(:programme_request).permit(:name, :email, :follow_up, :course_ids => [])
    end
end
