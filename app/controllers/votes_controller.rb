class VotesController < ApplicationController
  before_action :authenticate_user

  def index
  end

  def new
  	pic_count = Picture.all.count
  	rand = rand(pic_count)
  	@pictures = Picture.skip(rand).limit(1)
  	@vote = Vote.new
  end

  def create
  end
end
