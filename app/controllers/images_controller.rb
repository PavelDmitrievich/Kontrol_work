class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def new
  	@image = Image.new
  end

  def show
  end

  def edit
  end

  def create
  	@image = Image.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def index
  	@images = Image.all.order("created_at DESC")
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
  	params.require(:image).permit(:name, :image, :user_id)
  end
end
