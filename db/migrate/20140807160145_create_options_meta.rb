class CreateOptionsMeta < ActiveRecord::Migration
  def change
    create_table :options_meta do |t|
      t.references :options, index: true
      t.string :attribute
      t.integer :score

      t.timestamps
    end
  end
end
