class ActionTextRichTextsController < ApplicationController
  before_action :set_action_text_rich_text, only: [:show, :edit, :update, :destroy]

  # GET /action_text_rich_texts
  # GET /action_text_rich_texts.json
  def index
    @action_text_rich_texts = ActionTextRichText.all
  end

  # GET /action_text_rich_texts/1
  # GET /action_text_rich_texts/1.json
  def show
  end

  # GET /action_text_rich_texts/new
  def new
    @action_text_rich_text = ActionTextRichText.new
  end

  # GET /action_text_rich_texts/1/edit
  def edit
  end

  # POST /action_text_rich_texts
  # POST /action_text_rich_texts.json
  def create
    @action_text_rich_text = ActionTextRichText.new(action_text_rich_text_params)

    respond_to do |format|
      if @action_text_rich_text.save
        format.html { redirect_to @action_text_rich_text, notice: 'Action text rich text was successfully created.' }
        format.json { render :show, status: :created, location: @action_text_rich_text }
      else
        format.html { render :new }
        format.json { render json: @action_text_rich_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_text_rich_texts/1
  # PATCH/PUT /action_text_rich_texts/1.json
  def update
    respond_to do |format|
      if @action_text_rich_text.update(action_text_rich_text_params)
        format.html { redirect_to @action_text_rich_text, notice: 'Action text rich text was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_text_rich_text }
      else
        format.html { render :edit }
        format.json { render json: @action_text_rich_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_text_rich_texts/1
  # DELETE /action_text_rich_texts/1.json
  def destroy
    @action_text_rich_text.destroy
    respond_to do |format|
      format.html { redirect_to action_text_rich_texts_url, notice: 'Action text rich text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_text_rich_text
      @action_text_rich_text = ActionTextRichText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_text_rich_text_params
      params.require(:action_text_rich_text).permit(:name, :body, :record_type, :record_id)
    end
end
