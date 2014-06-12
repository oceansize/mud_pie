require 'rubygems'
require 'sinatra'

set :views, Proc.new { File.join(root, '..', "views") }
set :public_folder, Proc.new { File.join(root, '..', "public") }

configure do
  enable :sessions
end

get '/' do
  erb :index
end