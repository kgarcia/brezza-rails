class WhoaresController < ApplicationController
  before_action :set_whoare, only: [:show, :edit, :update, :destroy]
  before_action :set_meta
  layout "admin"
  # GET /whoares
  # GET /whoares.json
  def index
    @whoare = Whoare.first
  end

  # GET /whoares/1
  # GET /whoares/1.json
  def show
  end

  # GET /whoares/new
  def new
    @whoare = Whoare.new
  end

  # GET /whoares/1/edit
  def edit
  end

  # POST /whoares
  # POST /whoares.json
  def create
    @whoare = Whoare.new(whoare_params)

    respond_to do |format|
      if @whoare.save
        format.html { redirect_to whoares_url, notice: 'Whoare was successfully created.' }
        format.json { render :show, status: :created, location: @whoare }
      else
        format.html { render :new }
        format.json { render json: @whoare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whoares/1
  # PATCH/PUT /whoares/1.json
  def update
    respond_to do |format|
      if @whoare.update(whoare_params)
        format.html { redirect_to whoares_url, notice: 'Whoare was successfully updated.' }
        format.json { render :show, status: :ok, location: @whoare }
      else
        format.html { render :edit }
        format.json { render json: @whoare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whoares/1
  # DELETE /whoares/1.json
  def destroy
    @whoare.destroy
    respond_to do |format|
      format.html { redirect_to whoares_url, notice: 'Whoare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whoare
      @whoare = Whoare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whoare_params
      params.require(:whoare).permit(:description, :brezzastory, :mission, :vision, :history, :organigram, :organigrampic)
    end
end
