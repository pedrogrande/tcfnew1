class CodeClubSchoolsController < ApplicationController
  before_action :set_code_club_school, only: [:show, :edit, :update, :destroy]

  # GET /code_club_schools
  # GET /code_club_schools.json
  def index
    @code_club_schools = CodeClubSchool.all
  end

  # GET /code_club_schools/1
  # GET /code_club_schools/1.json
  def show
  end

  # GET /code_club_schools/new
  def new
    @code_club_school = CodeClubSchool.new
  end

  # GET /code_club_schools/1/edit
  def edit
  end

  # POST /code_club_schools
  # POST /code_club_schools.json
  def create
    @code_club_school = CodeClubSchool.new(code_club_school_params)

    respond_to do |format|
      if @code_club_school.save
        format.html { redirect_to @code_club_school, notice: 'Code club school was successfully created.' }
        format.json { render action: 'show', status: :created, location: @code_club_school }
      else
        format.html { render action: 'new' }
        format.json { render json: @code_club_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_club_schools/1
  # PATCH/PUT /code_club_schools/1.json
  def update
    respond_to do |format|
      if @code_club_school.update(code_club_school_params)
        format.html { redirect_to @code_club_school, notice: 'Code club school was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @code_club_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_club_schools/1
  # DELETE /code_club_schools/1.json
  def destroy
    @code_club_school.destroy
    respond_to do |format|
      format.html { redirect_to code_club_schools_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_club_school
      @code_club_school = CodeClubSchool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_club_school_params
      params.require(:code_club_school).permit(:name, :address, :suburb, :state, :postcode)
    end
end
