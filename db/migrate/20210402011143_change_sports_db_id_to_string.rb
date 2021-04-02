class ChangeSportsDbIdToString < ActiveRecord::Migration[6.1]
  def change
    change_column :players, :sportsDBId, :string
    change_column :teams, :sportsDBId, :string
  end
end
