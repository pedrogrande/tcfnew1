class StudentSitesController < ApplicationController
  before_action :set_student_site, only: [:show, :edit, :update, :destroy]

  # GET /student_sites
  # GET /student_sites.json
  def index
    @student_sites = StudentSite.all
  end

  # GET /student_sites/1
  # GET /student_sites/1.json
  def show
  end

  # GET /student_sites/new
  def new
    @student_site = StudentSite.new
  end

  # GET /student_sites/1/edit
  def edit
  end

  # POST /student_sites
  # POST /student_sites.json
  def create
    @student_site = StudentSite.new(student_site_params)

    respond_to do |format|
      if @student_site.save
        format.html { redirect_to @student_site, notice: 'Student site was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student_site }
      else
        format.html { render action: 'new' }
        format.json { render json: @student_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_sites/1
  # PATCH/PUT /student_sites/1.json
  def update
    respond_to do |format|
      if @student_site.update(student_site_params)
        format.html { redirect_to @student_site, notice: 'Student site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_sites/1
  # DELETE /student_sites/1.json
  def destroy
    @student_site.destroy
    respond_to do |format|
      format.html { redirect_to student_sites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_site
      @student_site = StudentSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_site_params
      params.require(:student_site).permit(:name, :url, :image, :screenshot)
    end
end
