class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 
 include ApplicationHelper
 #before_action :set_cart, only: [:edit, :update, :destroy]
 
 #before_action :set_current_user
 
 
#def set_current_user
 #if session [:user_id]
  #Current.user = User.find_by(id: session[:user_id])
#end
#end

end
