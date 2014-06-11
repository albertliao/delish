class PicturesController < ApplicationController
  def index
    @pictures = Picture.where(user_id:current_user)
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params.require(:picture).permit(:title, :category, :image, :user))
    if @picture.save
      redirect_to pictures_path
    else
      flash[:error] = "Upload failed, try again."
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
