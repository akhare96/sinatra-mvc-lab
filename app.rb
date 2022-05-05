require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text = params[:user_phrase]
        pig_object = PigLatinizer.new
        @pig_phrase = pig_object.piglatinize(text)
        erb :pig_latinized
    end
end