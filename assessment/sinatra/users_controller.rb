class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  # create
  def create
#     params = {name: 'bob', hometown: 'philly'}
#    @user =  User.create(params)
#     @user.save
    redirect "/users/#{@user.id}"
  end

  # index
  def index
    @user = User.all
  end

  # show
  def show
    @user = User.find_by_id(params[:id])
#     render :show
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
