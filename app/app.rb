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
		"Player with account ID #{params[:account_id]}."
	end

	get "/match/:id" do
		"Match with ID #{params[:id]}."
	end

end
