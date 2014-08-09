class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :options_meta, :attribute, :z_type
  end
end
