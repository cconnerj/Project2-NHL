class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :player, index:true, foreign_key:true, null:false
      t.references :team, index:true, foreign_key:true, null:false
    end
  end
end
