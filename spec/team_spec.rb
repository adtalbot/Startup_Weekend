require('rspec')
require('pry')
require('team')
require('member')

describe(Team) do
  before() do
    Team.clear()
  end
  describe('.all') do
    it('is empty at first') do
      expect(Team.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('adds a team to the array of saved teams') do
      test_team = Team.new({:name => 'blazers'})
      test_team.save()
      expect(Team.all()).to(eq([test_team]))
    end
  end
  describe('.clear') do
    it('clears thet array of saved teams') do
      Team.new({:name => 'blazers'}).save()
      Team.clear()
      expect(Team.all()).to(eq([]))
    end
  end
  describe('.find') do
    it('returns a team by its id') do
      test_team = Team.new({:name => 'blazers'})
      test_team.save()
      test_team2 = Team.new({:name => 'tigers'})
      test_team2.save()
      expect(Team.find(1)).to(eq(test_team))
    end
  end
  describe('add_member') do
    it('adds a member to a team') do
      test_team = Team.new({:name => 'blazer'})
      test_team.add_member('bob')
      expect(test_team.members()).to(eq(['bob']))
    end
  end
end
