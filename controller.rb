require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/film')
require_relative('./models/ticket')
require_relative('./models/customer')
also_reload('./models/*')


get '/films' do
    @films = Film.all()
    erb(:index)
end