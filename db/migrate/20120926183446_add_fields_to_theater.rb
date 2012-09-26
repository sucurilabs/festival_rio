class AddFieldsToTheater < ActiveRecord::Migration
  def change
    add_column :theaters, :price, :decimal
    add_column :theaters, :half_price, :decimal
    add_column :theaters, :stocking, :integer
  end
end
