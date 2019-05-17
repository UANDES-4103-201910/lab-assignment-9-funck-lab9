class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index

  end
  #def current_user
  #  @_current_user ||= session[:current_user_id] &&
  #      User.find_by(id: session[:current_user_id])
  #end

  #def is_user_logged_in?
	#complete this method
  #  if @_current_user == nil then logged_in = false else logged_in = true end
	#if logged_in then true else redirect_to root_path end
  #end
end
