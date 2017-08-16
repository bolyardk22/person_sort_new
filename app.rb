require 'sinatra'
require_relative 'compare_names.rb'

get '/' do
   erb :enter_names
end

post '/pairs_out' do
   names = params[:text]
   names_two = clean(shuffle_names(names))
   erb :output, :locals => {:names_two=>names_two}
end

get '/output' do
	names_two = params[:names_two]
	erb :output, :locals=> {:names_two=>names_two}
end

post '/action_page' do
	names_two = params[:names_two]
	erb :lastpage, :locals=> {:names_two=>names_two}
end