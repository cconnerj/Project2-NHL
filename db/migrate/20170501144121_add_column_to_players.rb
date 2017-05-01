class AddColumnToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :is_roster, :boolean
  end
end
