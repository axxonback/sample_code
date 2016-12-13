class AddCostToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :cost, :string
    add_index :players, :cost
  end
end
