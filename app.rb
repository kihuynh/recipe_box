require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**.*.rb')
require('./lib/recipe')
require('./lib/ingredient')
require('./lib/instruction')
require('./lib/tag')
require('pry')
require('pg')

get('/') do
  erb(:input)
end

get('/output') do
  erb(:output)
end
