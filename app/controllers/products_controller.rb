class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_meta
  layout "admin"
  # GET /products
  # GET /products.json
 def index
    @products = Product.all
    @pictures = Picture.all
    #render :json => @pictures.collect { |p| p.to_jq_upload }.to_json
  end
=begin
  def create
    p_attr = params[:picture]
    p_attr[:alt] = params[:picture][:file].first if params[:picture][:file].class == Array

    @picture = Picture.new(p_attr)
    if @picture.save
      respond_to do |format|
        format.html {  
          render :json => [@picture.to_jq_upload].to_json, 
          :content_type => 'text/html',
          :layout => false
        }
        format.json {  
          render :json => { :files => [@picture.to_jq_upload] }			
        }
      end
    else 
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end
=end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all
    @tags = Tag.all
  end

  # GET /products/1/edit
  def edit
        @categories = Category.all
    @tags = Tag.all
    @mistags = @product.tags.pluck(:id)
    
  end

  # POST /products
  # POST /products.json
  def create
    #raise params.to_json
    @product = Product.new(product_params)
    @product.tags = params[:e1]
    respond_to do |format|
      if @product.save
        if params[:picture_data]
            params[:picture_data].each do |pic| 
              @product.pictures.create(:photo => pic) 
            end
        end 
        format.html { redirect_to products_url, notice: 'Lilpro was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
=begin  def create
    #raise params.to_json
    @product = Product.new(product_params)
    @product.tags = params[:e1]
    #authorize @product
    
    if @product.save
      # to handle multiple images upload on create
      if params[:images]
        params[:images].each { |image|
          @product.pictures.create(alt: image)
        }
      end
      flash[:notice] = "Your product has been created."
      redirect_to @product
    else 
      flash[:alert] = "Something went wrong."
      render :new
    end
  end
=end
  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product.tags = params[:e1]
    respond_to do |format|
      if @product.update(product_params)
        if params[:picture_data]
            params[:picture_data].each do |pic| 
              @product.pictures.create(:photo => pic) 
            end
        end 
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :detail, :author, :category_id, :amount, :thumb, :picture_data)
    end
end
