class MainController < ApplicationController
  def index
  end
  def about
    @author = "rfoggo"
    @id=params['id']
    @page=params[:page].to_i
  end
  def thankyou
    redirect_to(action:"index")
  end
end
  