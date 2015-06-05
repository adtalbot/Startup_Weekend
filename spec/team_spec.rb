require('rspec')
require('pry')
require('team')
require('member')

describe(Team) do
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
end
