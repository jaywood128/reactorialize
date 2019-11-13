class TutorialModulesController < ApplicationController
  before_action :set_tutorial_module, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_modules
  # GET /tutorial_modules.json
  def index
    @tutorial_modules = TutorialModule.all
  end

  # GET /tutorial_modules/1
  # GET /tutorial_modules/1.json
  def show
  end

  # GET /tutorial_modules/new
  def new
    @tutorial_module = TutorialModule.new
  end

  # GET /tutorial_modules/1/edit
  def edit
  end

  # POST /tutorial_modules
  # POST /tutorial_modules.json
  def create
    @tutorial_module = TutorialModule.new(tutorial_module_params)

    respond_to do |format|
      if @tutorial_module.save
        format.html { redirect_to @tutorial_module, notice: 'Tutorial module was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_module }
      else
        format.html { render :new }
        format.json { render json: @tutorial_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_modules/1
  # PATCH/PUT /tutorial_modules/1.json
  def update
    respond_to do |format|
      if @tutorial_module.update(tutorial_module_params)
        format.html { redirect_to @tutorial_module, notice: 'Tutorial module was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_module }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_modules/1
  # DELETE /tutorial_modules/1.json
  def destroy
    @tutorial_module.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_modules_url, notice: 'Tutorial module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_module
      @tutorial_module = TutorialModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_module_params
      params.fetch(:tutorial_module, {})
    end
end
