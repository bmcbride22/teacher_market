class RemoveMediaTypesFromResources < ActiveRecord::Migration[7.0]
  def change
    remove_column :resources, :media_type_id
  end
end
