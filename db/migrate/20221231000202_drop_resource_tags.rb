class DropResourceTags < ActiveRecord::Migration[7.0]
  def change
		drop_table :resource_tags
  end
end
