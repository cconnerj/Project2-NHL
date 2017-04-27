class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :city
      t.string :name
      t.string :img_url
    end
  end
end
