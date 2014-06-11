module ApplicationHelper

  def current_user
    @current_user ||= session[:remember_token] && User.find(session[:remember_token])
  end

  def authenticate_user
    if !current_user
      redirect_to new_sessions_path
    end
  end

  def average_score(picture)
    if picture.votes.count > 0
    	picture.votes.avg(:score).round(2)
    else
      "N/A"
    end
  end

end
