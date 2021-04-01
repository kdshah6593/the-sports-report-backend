class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :sport
      t.string :team
      t.integer :sportsDBId

      t.timestamps
    end
  end
end
