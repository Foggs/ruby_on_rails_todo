class AccessController < ApplicationController
  def menu
    get_user_info_from_session
  end

  def new
    get_user_info_from_session
    if logged_in?
      redirect_to(menu_path)
    end  
  end

  def create
    logger.info('*** Login User #{params[:username]}')
    cookies[:username] = params[:username]
    session[:user_id] = 1228
    flash[:notice] = "Logged in"
    redirect_to(menu_path)
  end

  def destroy
    logger.info('*** Login User #{cookies[:username]}')
    cookies[:username] = params[:username]
    session[:user_id] = nil
    flash[:notice] = "Logged in"
    redirect_to(login_path)
  end

  
end
