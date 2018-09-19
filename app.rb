class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		@weekday = Date.today.strftime("%A")
		@month = Date.today.strftime("%B")
		@day = Time.now.asctime.split(" ")[2]
		@year = Time.now.asctime.split(" ")[4]
		erb :date
	end

end
