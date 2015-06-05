class Team
  attr_reader(:name, :id, :members)

  @@teams = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@teams.length().+(1)
    @members = []
  end
  define_singleton_method(:all) do
    @@teams
  end
  define_method(:save) do
    @@teams.push(self)
  end
  define_singleton_method(:clear) do
    @@teams = []
  end
  define_singleton_method(:find) do |id|
    found_team = nil
    @@teams.each() do |team|
      if team.id() == (id)
        found_team = team
      end
    end
    found_team
  end
end
