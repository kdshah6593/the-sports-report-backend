class User < ApplicationRecord
    has_secure_password
    has_many :user_players, dependent: :destroy
    has_many :players, through: :user_players
    has_many :user_teams, dependent: :destroy
    has_many :teams, through: :user_teams

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 6..20 }, on: :create
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'requires a valid email format'}
    validates :first_name, presence: true
    validates :last_name, presence: true

end