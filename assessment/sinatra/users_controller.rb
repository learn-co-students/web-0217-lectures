class UsersController < ApplicationController

  def index
    @user = User.all
    erb :'/users/index'
  end

  def new
    @user = User.new()
    erb :'/users/new'
  end

  def create
    @user = User.create(params[:user])
    redirect_to '/users/show'
  end

  def show
   @user = User.find(params[:id]) 
    erb :'/users/show'
  end

  # edit
  def edit
    @user = User.find(parmas[:id])
    erb :'/users/params[:id]/edit'
  end

  # update
  def update 
    @user.update(params)
    redirect_to '/users/show'
  end

  # destroy
  def destroy
    @user.destroy
    redirect_to '/'
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
