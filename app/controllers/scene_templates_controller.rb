class SceneTemplatesController < ApplicationController
  before_action :set_scene_template, only: [:show, :edit, :update, :destroy]

  # GET /scene_templates
  # GET /scene_templates.json
  def index
    @scene_templates = SceneTemplate.all
  end

  # GET /scene_templates/1
  # GET /scene_templates/1.json
  def show
  end

  # GET /scene_templates/new
  def new
    @scene_template = SceneTemplate.new
  end

  # GET /scene_templates/1/edit
  def edit
  end

  # POST /scene_templates
  # POST /scene_templates.json
  def create
    @scene_template = SceneTemplate.new(scene_template_params)

    respond_to do |format|
      if @scene_template.save
        format.html { redirect_to @scene_template, notice: 'Scene template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scene_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @scene_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scene_templates/1
  # PATCH/PUT /scene_templates/1.json
  def update
    respond_to do |format|
      if @scene_template.update(scene_template_params)
        format.html { redirect_to @scene_template, notice: 'Scene template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scene_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scene_templates/1
  # DELETE /scene_templates/1.json
  def destroy
    @scene_template.destroy
    respond_to do |format|
      format.html { redirect_to scene_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scene_template
      @scene_template = SceneTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scene_template_params
      params.require(:scene_template).permit(:review_template_id, :name, :description, :sort_order, :max_length, :required, :image_url)
    end
end
