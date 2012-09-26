class AddAddressComplementToTheater < ActiveRecord::Migration
  def change
    add_column :theaters, :address_complement, :string
  end
end
