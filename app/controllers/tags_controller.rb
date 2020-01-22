class TagsController < ApplicationController
  def new
    @image = Image.find(params[:image_id])
    @tag = @image.tags.new
    render :new
  end

  def create
    @image = Image.find(params[:image_id])
    @tag = @image.tags.new(tag_params)
    if @tag.save
      redirect_to image_path(@image)
    else
      render :new
    end
  end

  def show
    @image = Image.find(params[:image_id])
    @tag = Tag.find(params[:id])
    render :show
  end

  def edit
    @image = Image.find(params[:image_id])
    @tag = Tag.find(params[:id])
    render :edit
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to image_path(@tag.image)
    else
      render :edit
    end
  end

    def destroy
      @tag = Tag.find(params[:id])
      @tag.destroy
      redirect_to image_path(@tag.image)
    end
end

  #   private
  #   def tag_params
  #     params.require(:tag).permit(:name, :lyrics)
  #   end
  # end
