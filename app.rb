class App < Sinatra::Base

	get '/date' do
		@the_date = Date.today.strftime("%A, %B %e, %Y")
		erb :date
	end

	get '/hello' do
		erb :hello

	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end


end
