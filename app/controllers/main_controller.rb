class MainController < ApplicationController
  def index
  end
  def about
    @author = "rfoggo"
  end
  def thankyou
    redirect_to(action:"index")
  end
end
