class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :check_session, except: [:delegator, :new_session]

  def delegator
    if session[:user_id]
      redirect_to users_path
    else
      render :login, layout: false
    end
  end

  def new_session
    user = User.find_by_email(params[:email])
    if user
      hash = BCrypt::Engine.hash_secret(params[:password],user.password_salt)
      session[:user_id] = user.id if user.password_salted == hash
    end
    redirect_to root_path
  end

  def destroy_session
    reset_session
    redirect_to root_path
  end

  def check_session
    # return if controller_name == 'application'
    redirect_to root_path unless current_user
  end 

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
      
end   
      
      
      
