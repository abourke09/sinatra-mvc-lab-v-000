require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index.erb
  end

  post '/user_input' do
    @translated_text = PigLatinizer.piglatinize(params[:user_text])
    erb :results
  end

end
