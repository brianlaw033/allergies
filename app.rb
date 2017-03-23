require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/allergies')
  require('pry')

  get('/') do
    erb(:form)
  end

  get('/display') do
    @result = params.fetch('number').allergies()
    erb(:form)
  end
