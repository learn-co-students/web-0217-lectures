class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  # create
  def create
    @user.save
  end

  # index
  def index
    @user = User.all
  end

  # show
  def show
    @user = User.find_by_id(params[:id])
  end

  # edit
  def edit
    @user = User.find_by_id(params[:id])
  end

  # update
  def update
    @user = User.find_by_id(params[:id])
    @user.save
  end

  # destroy
  def destroy
    @user = User.find_by_id(params[:id])
    @user.delete
  end
end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
