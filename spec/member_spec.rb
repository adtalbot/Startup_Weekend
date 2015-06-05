require('rspec')
require('pry')
require('member')
require('team')

describe(Member) do
  describe('.all') do
    it('is empty at first') do
      expect(Member.all()).to(eq([]))
    end
  end
end
