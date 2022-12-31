class RemoveSubjectFromResources < ActiveRecord::Migration[7.0]
  def change
    remove_column :resources, :subject_id
  end
end
