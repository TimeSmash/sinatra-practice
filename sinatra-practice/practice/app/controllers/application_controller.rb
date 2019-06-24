require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/me" do
    erb :me
  end

  get "/students" do
    @students = Student.all
    erb :students
  end
end
