class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :sport, :team, :sportsDBId
end
