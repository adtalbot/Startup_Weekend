class Team
  attr_reader(:name, :id, :members)

  @@teams = []

  define_method(:initialize) do |attributes|
    @name = params.fetch(:name)
    @id = @teams.length().+(1)
    @members = []
  end
  define_singleton_method(:all) do
    @@teams
  end
end
