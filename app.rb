require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require('./lib/places')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/places') do
  new_place = Place.new(params.fetch('place'))
  new_place.save()
  erb(:places)
end

get('/places') do
  erb(:places)
end
