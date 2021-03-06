require_relative "env"

require "sinatra"
require "dotka"

class DotkaDemoApp < Sinatra::Base

	enable :static

	set :public_folder, __dir__ + "/../public"

	get "/" do
		erb :main, :layout => true
	end

	get "/player" do
		redirect to("/player/#{params[:account_id]}")
	end

	get "/player/:account_id" do

		dotka = Dotka.new
		dotka.set_api_key $API_KEY

		matches = dotka.matches(id = params[:account_id], {"matches_requested" => 10})
		matches.each { |match| match.load_info dotka }

		erb :player, :layout => true, :locals => {:matches => matches, :account_id => id}

	end

	get "/match/:id" do

		(dotka = Dotka.new).set_api_key $API_KEY

		erb :match, :layout => true, :locals => {:match => dotka.match(params[:id])}

	end

end
