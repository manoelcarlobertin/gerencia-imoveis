class AddAddressZipCodeToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :address_zip_code, :string, limit: 9
  end
end
