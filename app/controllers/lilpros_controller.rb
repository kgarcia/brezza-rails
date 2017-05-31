class LilprosController < ApplicationController
  before_action :set_lilpro, only: [:show, :edit, :update, :destroy]
  before_action :set_meta
  layout "admin"
  
  # GET /lilpros
  # GET /lilpros.json
  def index
    @lilpro = Lilpro.first
  end

  # GET /lilpros/1
  # GET /lilpros/1.json
  def show
  end

  # GET /lilpros/new
  def new
    @lilpro = Lilpro.new
  end

  # GET /lilpros/1/edit
  def edit
  end

  # POST /lilpros
  # POST /lilpros.json
  def create
    @lilpro = Lilpro.new(lilpro_params)

    respond_to do |format|
      if @lilpro.save
        format.html { redirect_to lilpros_url, notice: 'Lilpro was successfully created.' }
        format.json { render :show, status: :created, location: @lilpro }
      else
        format.html { render :new }
        format.json { render json: @lilpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lilpros/1
  # PATCH/PUT /lilpros/1.json
  def update
    respond_to do |format|
      if @lilpro.update(lilpro_params)
        format.html { redirect_to lilpros_url, notice: 'Lilpro was successfully updated.' }
        format.json { render :show, status: :ok, location: @lilpro }
      else
        format.html { render :edit }
        format.json { render json: @lilpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lilpros/1
  # DELETE /lilpros/1.json
  def destroy
    @lilpro.destroy
    respond_to do |format|
      format.html { redirect_to lilpros_url, notice: 'Lilpro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lilpro
      @lilpro = Lilpro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lilpro_params
      params.require(:lilpro).permit(:title, :description, :image)
    end
end
