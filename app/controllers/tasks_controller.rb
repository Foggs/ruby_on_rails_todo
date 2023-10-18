class TasksController < ApplicationController
  def index
    @tasks=['Task1','Task2','Task3']
    @page=params[:page].to_i
  end

  def new
  end

  def edit
  end
end
