require 'rubygems'
require 'sinatra'
set :views, Proc.new { File.join(root, '..', "views") }
set :public_folder, Proc.new { File.join(root, '..', "public") }


get '/' do
  erb :index
end

get '/west' do
	"Congratulations on choosing the west door. Your basic literacy has won the day."
end

get '/east' do
	"Choosing the east door was bad. Your face is torn off by gophers."
end


post '/' do
	if params[:decision][0].downcase == "w"
		redirect '/west'
	else
		redirect '/east'
	end
end
