class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.references :localization
      t.string :name

      t.timestamps
    end
    add_index :neighborhoods, :localization_id
  end
end
