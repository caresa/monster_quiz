class AddUrl < ActiveRecord::Migration
  def change
    add_column(:zombies, :zombie_url, :text)
  end
end
