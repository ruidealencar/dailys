class AfternoonFormsController < ApplicationController
  before_action :set_afternoon_form, only: [:show, :edit, :update, :destroy]

  # GET /afternoon_forms
  # GET /afternoon_forms.json
  def index
    @afternoon_forms = AfternoonForm.all
  end

  # GET /afternoon_forms/1
  # GET /afternoon_forms/1.json
  def show
  end

  # GET /afternoon_forms/new
  def new
    @afternoon_form = AfternoonForm.new
  end

  # GET /afternoon_forms/1/edit
  def edit
  end

  # POST /afternoon_forms
  # POST /afternoon_forms.json
  def create
    @afternoon_form = AfternoonForm.new(afternoon_form_params)

    respond_to do |format|
      if @afternoon_form.save
        format.html { redirect_to @afternoon_form, notice: 'Afternoon form was successfully created.' }
        format.json { render :show, status: :created, location: @afternoon_form }
      else
        format.html { render :new }
        format.json { render json: @afternoon_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /afternoon_forms/1
  # PATCH/PUT /afternoon_forms/1.json
  def update
    respond_to do |format|
      if @afternoon_form.update(afternoon_form_params)
        format.html { redirect_to @afternoon_form, notice: 'Afternoon form was successfully updated.' }
        format.json { render :show, status: :ok, location: @afternoon_form }
      else
        format.html { render :edit }
        format.json { render json: @afternoon_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afternoon_forms/1
  # DELETE /afternoon_forms/1.json
  def destroy
    @afternoon_form.destroy
    respond_to do |format|
      format.html { redirect_to afternoon_forms_url, notice: 'Afternoon form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_afternoon_form
      @afternoon_form = AfternoonForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def afternoon_form_params
      params.require(:afternoon_form).permit(:answer1, :answer2, :user_id)
    end
end
