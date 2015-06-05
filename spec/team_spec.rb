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
end
