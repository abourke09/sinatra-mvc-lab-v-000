require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @translated_text = PigLatinizer.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
