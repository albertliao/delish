class VotesController < ApplicationController
  before_action :authenticate_user

  def index
  	@votes = Vote.where(user_id:current_user)
  end

  def new
  	pic_count = Picture.all.count
  	if pic_count > 0
  		rand = rand(pic_count)
  		@picture = Picture.skip(rand).limit(1).first
  		@pictureid = @picture.id
  		@vote = Vote.new
  		@user = current_user.id
  	else
  		redirect_to new_picture_path
  	end
  end

  def create
  	@vote = Vote.new(params.require(:vote).permit(:score, :user, :picture))
  	if @vote.save
  		redirect_to pictures_path
  	else
  		render 'new'
  	end
  end

end
