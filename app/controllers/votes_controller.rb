class VotesController < ApplicationController
  before_action :authenticate_user

  def index
  end

  def new
  	pic_count = Picture.all.count
  	rand = rand(pic_count)
  	@picture = Picture.skip(rand).limit(1).first
  	@vote = Vote.new
  	@user = current_user
  end

  def create
  	@vote = Vote.new(params.require(:vote).permit(:score, :user, :picture))
  	if @vote.save
  		redirect_to votes_path
  	else
  		render 'new'
  	end
  end

end
