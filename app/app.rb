require "sinatra"

class DotkaDemoApp < Sinatra::Base

	get "/" do
		"Welcome!"
	end

	get "/player/:account_id" do
		"Player with account ID #{params[:account_id]}."
	end

	get "/match/:id" do
		"Match with ID #{params[:id]}."
	end

end
