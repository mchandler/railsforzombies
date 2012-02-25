class RemoveAgeFromNewZombie < ActiveRecord::Migration
  def up
    remove_column :new_zombies, :age
  end

  def down
    add_column :new_zombies, :age, :integer
  end
end
