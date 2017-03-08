class UsersController < ApplicationController

  def new
    @user = User.new
  end

  get '/users' do
    @users = User.all
    erb :index
  end

  get '/users/new' do
    erb :new
  end

  post '/users' do
    @user = User.create(params)
    redirect to "users/#{@user.id}"
  end
  # edit
  get '/users/:id/edit' do
    @user = User.find_by_id(params[:id])
    erb :edit
  end

  get '/users/:id' do
    @user = User.find_by_id(params[:id])
    erb :show
  end

  post '/users/:id' do
    @user = User.find_by_id(params[:id])
    @user.name = params[:name]
    @user.hometown = params[:hometown]
    @user.save
    redirect to "/users/#{@user.id}"
  end

  # destroy
  delete '/users/:id/delete' do
    @user = User.find_by_id(params[:id])
    @users = User.all
    @user_name = @user.name
    @post.delete
    erb :delete
  end

end

# So I'm pretty sure I'm beginning to understand how to build out an application controller and it's views/actions. I'm finishing up the RESTful routes lab. It's still way hazier than I would like but I think I can sort of manage to understand this topic... Unless the above code really missed the mark, in which case S.O.S..


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
