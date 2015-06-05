class Member
  attr_reader(:name, :id)

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
end
