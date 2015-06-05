class Member
  attr_reader(:name, :id, :teams)

  @@members = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@members.length.+(1)
    @teams = []
  end
  define_singleton_method(:all) do
    @@members
  end
  define_method(:save) do
    @@members.push(self)
  end
  define_singleton_method(:clear) do
    @@members = []
  end
  define_singleton_method(:find) do |id|
    found_member = nil
    @@members.each() do |member|
      if member.id() == (id)
        found_member = member
      end
    end
    found_member
  end
end
