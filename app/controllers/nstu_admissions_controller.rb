class NstuAdmissionsController < ApplicationController
  before_action :set_nstu_admission, only: [:show, :edit, :update, :destroy]

  # GET /nstu_admissions
  # GET /nstu_admissions.json
def index  
  @nstu_admissions = NstuAdmission.all
  if params[:search].blank?
    @message="Please enter your roll no"
  else if params[:search]=~/^[0-9]*$/
     @nstu_admissions = NstuAdmission.search(params[:search])
    else
     @notdigit="You have not entered digit"
  end
end
end
  # GET /nstu_admissions/1
  # GET /nstu_admissions/1.json
  def show
  end

  # GET /nstu_admissions/new
  def new
    @nstu_admission = NstuAdmission.new
  end

  # GET /nstu_admissions/1/edit
  def edit
  end

  # POST /nstu_admissions
  # POST /nstu_admissions.json
  def create
    @nstu_admission = NstuAdmission.new(nstu_admission_params)

    respond_to do |format|
      if @nstu_admission.save
        format.html { redirect_to @nstu_admission, notice: 'Nstu admission was successfully created.' }
        format.json { render :show, status: :created, location: @nstu_admission }
      else
        format.html { render :new }
        format.json { render json: @nstu_admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nstu_admissions/1
  # PATCH/PUT /nstu_admissions/1.json
  def update
    respond_to do |format|
      if @nstu_admission.update(nstu_admission_params)
        format.html { redirect_to @nstu_admission, notice: 'Nstu admission was successfully updated.' }
        format.json { render :show, status: :ok, location: @nstu_admission }
      else
        format.html { render :edit }
        format.json { render json: @nstu_admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nstu_admissions/1
  # DELETE /nstu_admissions/1.json
  def destroy
    @nstu_admission.destroy
    respond_to do |format|
      format.html { redirect_to nstu_admissions_url, notice: 'Nstu admission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nstu_admission
      @nstu_admission = NstuAdmission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nstu_admission_params
      params.require(:nstu_admission).permit(:roll_no, :name, :father_name, :ssc_gpa, :hsc_gpa, :phy, :che, :math, :bio, :ban_eng, :bangla, :ENG, :math, :ana_abi, :gen_kno, :merit)
    end
end
