class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :zombie_type
      t.text :description

      t.timestamps
    end
  end
end
