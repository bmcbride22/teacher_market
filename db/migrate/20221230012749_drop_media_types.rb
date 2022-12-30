class DropMediaTypes < ActiveRecord::Migration[7.0]
  def change
    drop_table :media_types
  end
end
