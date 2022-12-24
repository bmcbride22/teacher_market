class AddAssociationsToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resources, :user, null: false, foreign_key: true
    add_reference :resources, :subject, null: false, foreign_key: true
    add_reference :resources, :media_type, null: false, foreign_key: true
  end
end
