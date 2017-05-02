class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :age
      t.string :name
      t.string :position
      t.string :img_url
    end
  end
end
