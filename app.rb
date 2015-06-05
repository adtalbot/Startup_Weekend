require('sinatra')
require('sinatra/reloader')
require('./lib/team')
require('./lib/member')
also_reload('/lib/**/*.rb')

get('/') do
  @teams =  Team.all()
  erb(:index)
end

post('/') do
  name = params.fetch('name')
  team = Team.new({:name => name})
  team.save()
  erb(:success)
end
