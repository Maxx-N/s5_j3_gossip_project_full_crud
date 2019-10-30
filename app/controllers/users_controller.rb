class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @my_user = User.all.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
