class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :sport, :sportsDBId
end
