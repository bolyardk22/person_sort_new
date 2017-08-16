require 'sinatra'
require_relative 'compare_names.rb'

get '/' do
   erb :enter_names
end

post '/pairs_out' do
   names = params.values
   names_two = clean(shuffle_names(names))
   erb :output, :locals => {:names_two=>names_two}
end

get '/enter_names' do
	names_two = params[:names_two]
	erb :enter_names, :locals=> {:names_two=>names_two}
end

post '/enter_names' do
	names_two = params[:names_two]
	redirect '/output?num1=' + num1
end

get '/output' do
	names_two = params[:names_two]
	erb :output, :locals=> {:names_two=>names_two}
end

post '/output' do
	names_two = params[:names_two]
end

