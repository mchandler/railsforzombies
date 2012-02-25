class CreateNewZombies < ActiveRecord::Migration
  def change
    create_table :new_zombies do |t|
      t.string :name
      t.text :bio
      t.integer :age

      t.timestamps
    end
  end
end
