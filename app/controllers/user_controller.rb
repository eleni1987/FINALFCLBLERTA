class UserController < ApplicationController
  before_filter  :correct_user,   only:[:edit, :update]
  before_filter  :admin_user,     only:[:edit, :destroy]
  before_filter  :gym_user,     only:[:edit, :destroy]
  before_filter  :pt_user,     only:[:edit, :destroy]
  
  
  


def login
 
 session[:login]=1
 session[:cart] = nil
 flash[:notice] = "Admin Login sucessfull!!"
 redirect_to :controller => :fitness_classes
 end

 def logout
 session[:login] = nil
 session[:cart] = nil
 flash[:notice] = "You have been successfully logged out!!"
 redirect_to :controller => :fitness_classes
 end 
 

end
