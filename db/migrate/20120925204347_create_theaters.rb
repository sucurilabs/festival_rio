class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.references :neighborhood
      t.string :address
      t.integer :number

      t.timestamps
    end
    add_index :theaters, :neighborhood_id
  end
end
