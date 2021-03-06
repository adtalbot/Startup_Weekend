require('rspec')
require('pry')
require('member')
require('team')

describe(Member) do
  before() do
    Member.clear()
  end
  describe('.all') do
    it('is empty at first') do
      expect(Member.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('adds a member to the saved array of classes') do
      test_member = Member.new({:name => 'bob'})
      test_member.save()
      expect(Member.all()).to(eq([test_member]))
    end
  end
  describe('.clear') do
    it('clears out the array of saved members') do
      Member.new({:name => 'bob'}).save()
      Member.clear()
      expect(Member.all()).to(eq([]))
    end
  end
end
