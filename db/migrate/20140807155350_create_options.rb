class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :question, index: true
      t.text :label

      t.timestamps
    end
  end
end
