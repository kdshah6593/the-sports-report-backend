class Player < ApplicationRecord
    has_many :user_players
    has_many :users, through: :user_players
end
