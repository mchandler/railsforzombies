class AddEmailAndRottingToNewZombie < ActiveRecord::Migration
  def change
    add_column :new_zombies, :email, :string
    add_column :new_zombies, :rotting, :boolean, default: false
  end
end
