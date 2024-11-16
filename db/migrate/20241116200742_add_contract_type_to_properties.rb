class AddContractTypeToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :contract_type, :string, limit: 20, default: 'rent'
  end
end
