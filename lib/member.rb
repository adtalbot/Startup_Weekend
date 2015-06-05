class Member
  attr_reader(:name)

  @@members = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @teams = []
  end
  define_singleton_method(:all) do
    @@members
  end
  define_method(:save) do
    @@members.push(self)
  end
end
