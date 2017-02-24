class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  get '/users' do
    @users = User.all
    erb(:index)

    # <html>
      # bob
      # sally
    # </html>
    # Response.new(['200', 'content/html', 'html'])
  end

  get '/users/new' do
    erb :new
  end

  post '/users' do
    new_user = User.create(params)
    new_user.save
    redirect to '/users'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  patch 'users/:id' do
    user = User.find(params[:id])
    user.update(params)
    redirect to "/users/#{user.id}"
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.delete
    redirect to "/users"
  end

  # def erb(file)
  #   file = File.read(file)
  #   ERB.new(file)
  #   binding.local_variables
  #   erb.result(binding)
  # end
end
