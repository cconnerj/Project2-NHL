class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :age
      t.string :name
      t.string :position
      t.string :img_url
      t.references :team, index: true, foreign_key: true
    end
  end
end
