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

get('/teams/:id') do
  @team = Team.find(params.fetch('id').to_i())
  @teams = Team.all()
  erb(:team)
end

get('/teams/:id/members/new') do
  @team = Team.find(params.fetch('id').to_i())
  erb(:team_member_form)
end

post('/members') do
  member_name = params.fetch('member_name')
  @member = Member.new({:name => member_name})
  @member.save()
  @team = Team.find(params.fetch('id').to_i())
  @team.add_member(@member)
  erb(:success)
end
