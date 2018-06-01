class MorningFormsController < ApplicationController
  before_action :set_morning_form, only: [:show, :edit, :update, :destroy]

  # GET /morning_forms
  # GET /morning_forms.json
  def index
    @morning_forms = MorningForm.all
  end

  # GET /morning_forms/1
  # GET /morning_forms/1.json
  def show
  end

  # GET /morning_forms/new
  def new
    @morning_form = MorningForm.new
  end

  # GET /morning_forms/1/edit
  def edit
  end

  # POST /morning_forms
  # POST /morning_forms.json
  def create
    @morning_form = MorningForm.new(morning_form_params)

    respond_to do |format|
      if @morning_form.save
        format.html { redirect_to @morning_form, notice: 'Morning form was successfully created.' }
        format.json { render :show, status: :created, location: @morning_form }
      else
        format.html { render :new }
        format.json { render json: @morning_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morning_forms/1
  # PATCH/PUT /morning_forms/1.json
  def update
    respond_to do |format|
      if @morning_form.update(morning_form_params)
        format.html { redirect_to @morning_form, notice: 'Morning form was successfully updated.' }
        format.json { render :show, status: :ok, location: @morning_form }
      else
        format.html { render :edit }
        format.json { render json: @morning_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morning_forms/1
  # DELETE /morning_forms/1.json
  def destroy
    @morning_form.destroy
    respond_to do |format|
      format.html { redirect_to morning_forms_url, notice: 'Morning form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_morning_form
      @morning_form = MorningForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def morning_form_params
      params.require(:morning_form).permit(:answer1, :answer2, :user_id)
    end
end
