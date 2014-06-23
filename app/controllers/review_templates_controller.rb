class ReviewTemplatesController < ApplicationController
  before_action :set_review_template, only: [:show, :edit, :update, :destroy]

  # GET /review_templates
  # GET /review_templates.json
  def index
    @review_templates = ReviewTemplate.all
  end

  # GET /review_templates/1
  # GET /review_templates/1.json
  def show
  end

  # GET /review_templates/new
  def new
    @review_template = ReviewTemplate.new
  end

  # GET /review_templates/1/edit
  def edit
  end

  # POST /review_templates
  # POST /review_templates.json
  def create
    @review_template = ReviewTemplate.new(review_template_params)

    respond_to do |format|
      if @review_template.save
        format.html { redirect_to @review_template, notice: 'Review template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @review_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @review_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_templates/1
  # PATCH/PUT /review_templates/1.json
  def update
    respond_to do |format|
      if @review_template.update(review_template_params)
        format.html { redirect_to @review_template, notice: 'Review template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @review_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_templates/1
  # DELETE /review_templates/1.json
  def destroy
    @review_template.destroy
    respond_to do |format|
      format.html { redirect_to review_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_template
      @review_template = ReviewTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_template_params
      params.require(:review_template).permit(:title, :product_id, :custom_scenes_allowed)
    end
end
