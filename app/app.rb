require "sinatra"

class DotkaDemoApp < Sinatra::Base
	get "/" do
		"Welcome!"
	end
end
