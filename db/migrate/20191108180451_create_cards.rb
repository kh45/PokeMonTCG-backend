class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :imageUrl
      t.integer :hp
      t.string :attack_name
      t.integer :attack_damage
      t.string :attack_name_2
      t.integer :attack_damage_2
      
      t.integer :deck_id

      t.timestamps
    end
  end
end
