class CreateUserPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_players do |t|
      t.references :user, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
